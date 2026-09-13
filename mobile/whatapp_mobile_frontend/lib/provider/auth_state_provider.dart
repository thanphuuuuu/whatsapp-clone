import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/service/socket_service.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';
import 'package:whatapp_mobile_frontend/config.dart';
import 'package:whatapp_mobile_frontend/urlconfig.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthStateProvider extends ChangeNotifier {
  AuthStatus _status = AuthStatus.unknown;
  String? _token;
  String? userId;

  AuthStatus get status => _status;
  String? get token => _token;

  Future<void> checkToken() async {
    final savedToken = await TokenStorage.getToken();

    if (savedToken != null && savedToken.isNotEmpty) {
      _token = savedToken;
      _status = AuthStatus.authenticated;
      SocketService().connect(socketBaseUrl, savedToken);
    } else {
      _token = null;
      _status = AuthStatus.unauthenticated;
    }
    notifyListeners();
  }

  Future<void> login(String access_token, String user_id) async {
    await TokenStorage.saveToken(access_token);
    await TokenStorage.saveUserid(user_id);
    _token = access_token;
    userId = user_id;
    _status = AuthStatus.authenticated;
    SocketService().connect(socketBaseUrl, access_token);
    notifyListeners();
  }

  void logout() async {
    _token = null;
    userId = null;
    _status = AuthStatus.unauthenticated;
    await TokenStorage.clearToken();
    await TokenStorage.clear_User_id();
    SocketService().disconnect();
    notifyListeners();
  }
}
