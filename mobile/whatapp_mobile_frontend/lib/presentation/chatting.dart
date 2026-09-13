import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatapp_mobile_frontend/model/conversations_response.dart';
import 'package:whatapp_mobile_frontend/model/conversation_messager_response.dart';
import 'package:whatapp_mobile_frontend/provider/chat_provider.dart';
import 'package:whatapp_mobile_frontend/provider/auth_state_provider.dart';
import 'package:whatapp_mobile_frontend/service/conversation_service.dart';

String _formatTime(String? createdAt) {
  if (createdAt == null) return '';
  final dt = DateTime.parse(createdAt).toLocal();
  final hh = dt.hour.toString().padLeft(2, '0');
  final mm = dt.minute.toString().padLeft(2, '0');
  return '$hh:$mm';
}

class ChattingScreen extends StatelessWidget {
  const ChattingScreen({super.key, required this.conversation_data});
  final Conversation conversation_data;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ChatProvider(conversation_data.id),
      child: _ChattingView(conversation_data: conversation_data),
    );
  }
}

class _ChattingView extends StatefulWidget {
  const _ChattingView({required this.conversation_data});
  final Conversation conversation_data;

  @override
  State<_ChattingView> createState() => _ChattingViewState();
}

class _ChattingViewState extends State<_ChattingView> {
  final _controller = TextEditingController();
  late Future<ConversationMessagerResponse> _historyFuture;

  @override
  void initState() {
    super.initState();
    _historyFuture = ConversationService().getMessages(
      widget.conversation_data.id,
    );
  }

  void _send() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;
    context.read<ChatProvider>().sendMessage(text);
    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myUserId = context.read<AuthStateProvider>().userId;

    final member = widget.conversation_data.members.isNotEmpty
        ? widget.conversation_data.members.first
        : null;

    final name = widget.conversation_data.isGroup
        ? widget.conversation_data.groupName
        : (member?.fullName ?? '');
    final avatar = widget.conversation_data.isGroup
        ? widget.conversation_data.groupAvatar
        : (member?.avatar ?? '');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          automaticallyImplyLeading: false,

          title: ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(CupertinoIcons.back),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                    image: avatar.isNotEmpty
                        ? DecorationImage(
                            image: NetworkImage(avatar),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  alignment: Alignment.center,
                  child: avatar.isEmpty
                      ? Text(
                          name.isNotEmpty ? name[0] : '?',
                          style: const TextStyle(fontSize: 18),
                        )
                      : null,
                ),
              ],
            ),
            title: Text(name),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.phone),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.video_camera),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder<ConversationMessagerResponse>(
                future: _historyFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Lỗi: ${snapshot.error}'));
                  }

                  final history = snapshot.data?.data?.messages ?? [];
                  final oldMessages = history.reversed.toList();

                  return Consumer<ChatProvider>(
                    builder: (context, chat, _) {
                      final allMessages = [...chat.messages, ...oldMessages];

                      return ListView.builder(
                        reverse: true,
                        padding: const EdgeInsets.all(12),
                        itemCount: allMessages.length,
                        itemBuilder: (context, index) {
                          final msg = allMessages[index];
                          final isMe = msg.sender?.id == myUserId;
                          final time = _formatTime(msg.createdAt);

                          return Align(
                            alignment: isMe
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.7,
                              ),
                              decoration: BoxDecoration(
                                color: isMe
                                    ? Theme.of(context).colorScheme.primary
                                    : Colors.grey[200],
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    msg.content ?? '',
                                    style: TextStyle(
                                      color: isMe ? Colors.white : Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    time,
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: isMe
                                          ? Colors.white70
                                          : Colors.black54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            Consumer<ChatProvider>(
              builder: (context, chat, _) {
                if (!chat.someoneTyping) return const SizedBox.shrink();
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Đang nhập...',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                );
              },
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: 'Nhập tin nhắn...',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (v) {
                          if (v.isEmpty) {
                            context.read<ChatProvider>().stopTyping();
                          } else {
                            context.read<ChatProvider>().startTyping();
                          }
                        },
                        onSubmitted: (_) => _send(),
                      ),
                    ),
                    IconButton(icon: const Icon(Icons.send), onPressed: _send),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
