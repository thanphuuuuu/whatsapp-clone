import 'package:flutter/foundation.dart';
import 'package:whatapp_mobile_frontend/service/socket_service.dart';

enum CallState { idle, ringing, incoming, connected, ended }

class CallProvider extends ChangeNotifier {
  final _socket = SocketService().socket;

  CallState state = CallState.idle;
  String? peerUserId;
  String? conversationId;

  CallProvider() {
    _socket.on('call:incoming', (data) {
      peerUserId = data['fromUserId'];
      conversationId = data['conversationId'];
      state = CallState.incoming;
      notifyListeners();
    });

    _socket.on('call:accepted', (data) {
      state = CallState.connected;
      notifyListeners();
    });

    _socket.on('call:rejected', (data) {
      state = CallState.ended;
      notifyListeners();
    });

    _socket.on('call:ended', (data) {
      state = CallState.ended;
      notifyListeners();
    });
  }

  void invite(String toUserId, String convId) {
    peerUserId = toUserId;
    conversationId = convId;
    _socket.emit('call:invite', {
      'toUserId': toUserId,
      'conversationId': convId,
    });
    state = CallState.ringing;
    notifyListeners();
  }

  void accept() {
    _socket.emit('call:accept', {
      'toUserId': peerUserId,
      'conversationId': conversationId,
    });
    state = CallState.connected;
    notifyListeners();
  }

  void reject() {
    _socket.emit('call:reject', {
      'toUserId': peerUserId,
      'conversationId': conversationId,
    });
    state = CallState.ended;
    notifyListeners();
  }

  void end() {
    _socket.emit('call:end', {'toUserId': peerUserId});
    state = CallState.idle;
    notifyListeners();
  }
}
