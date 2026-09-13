import 'package:flutter/foundation.dart';
import 'package:whatapp_mobile_frontend/service/socket_service.dart';
import 'package:whatapp_mobile_frontend/model/conversation_messager_response.dart';

class ChatProvider extends ChangeNotifier {
  final String conversationId;
  final _socket = SocketService().socket;

  List<MessageItem> messages = [];
  bool someoneTyping = false;

  ChatProvider(this.conversationId) {
    _socket.emit('conversation:join', {'conversationId': conversationId});
    _socket.on('message:new', _onNewMessage);
    _socket.on('typing:start', _onTypingStart);
    _socket.on('typing:stop', _onTypingStop);
  }

  void _onNewMessage(data) {
    final msg = MessageItem.fromJson(data['message']);
    messages.insert(0, msg);
    notifyListeners();
  }

  void _onTypingStart(data) {
    someoneTyping = true;
    notifyListeners();
  }

  void _onTypingStop(data) {
    someoneTyping = false;
    notifyListeners();
  }

  void sendMessage(String content) {
    _socket.emitWithAck(
      'message:send',
      {'conversationId': conversationId, 'content': content, 'type': 'text'},
      ack: (res) {
        debugPrint(res.toString());
      },
    );
  }

  void startTyping() =>
      _socket.emit('typing:start', {'conversationId': conversationId});
  void stopTyping() =>
      _socket.emit('typing:stop', {'conversationId': conversationId});

  @override
  void dispose() {
    _socket.emit('conversation:leave', {'conversationId': conversationId});
    _socket.off('message:new', _onNewMessage);
    _socket.off('typing:start', _onTypingStart);
    _socket.off('typing:stop', _onTypingStop);
    super.dispose();
  }
}
