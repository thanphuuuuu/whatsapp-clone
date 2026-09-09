import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';

enum AuthStatus { unknown, authenticated, unauthenticated }

class AuthStateProvider extends ChangeNotifier {
  AuthStatus _status = AuthStatus.unknown;
  String? _token;

  AuthStatus get status => _status;
  String? get token => _token;

  Future<void> checkToken() async {
    final savedToken = await TokenStorage.getToken();

    if (savedToken != null && savedToken.isNotEmpty) {
      _token = savedToken;
      _status = AuthStatus.authenticated;
    } else {
      _token = null;
      _status = AuthStatus.unauthenticated;
    }
    notifyListeners();
  }

  Future<void> login(String access_token) async {
    await TokenStorage.saveToken(access_token);
    _status = AuthStatus.authenticated;
    notifyListeners();
  }

  void logout() async {
    _token = null;
    _status = AuthStatus.unauthenticated;
    await TokenStorage.clearToken();
    notifyListeners();
  }
}
