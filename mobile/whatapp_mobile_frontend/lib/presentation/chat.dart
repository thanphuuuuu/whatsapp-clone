import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/presentation/authScreen.dart';
import 'package:whatapp_mobile_frontend/presentation/chatting.dart';
import 'package:whatapp_mobile_frontend/service/conversation_service.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Trò chuyện"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.people,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.mark_chat_read_outlined),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm cuộc trò chuyện hoặc nhóm',
                  prefixIcon: const Icon(Icons.search),
                  contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        body: FutureBuilder(
          future: ConversationService().getConversations(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(index.toString()));
                },
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              final conversations = snapshot.data!.data.conversations;

              if (conversations.isEmpty) {
                return const Center(child: Text("Chưa có cuộc trò chuyện nào"));
              }

              return ListView.builder(
                itemCount: conversations.length,
                itemBuilder: (context, index) {
                  final item = conversations[index];
                  final member = item.members.isNotEmpty
                      ? item.members.first
                      : null;

                  final name = item.isGroup
                      ? item.groupName
                      : (member?.fullName ?? '');
                  final avatar = item.isGroup
                      ? item.groupAvatar
                      : (member?.avatar ?? '');
                  final lastMsg = item.lastMessage?.content ?? '';
                  final isGr = item.isGroup;
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: avatar.isNotEmpty
                          ? NetworkImage(avatar)
                          : null,
                      child: avatar.isEmpty
                          ? Text(name.isNotEmpty ? name[0] : '?')
                          : null,
                    ),
                    title: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      lastMsg,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChattingScreen(
                            conversation_data: conversations[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              return Center(child: Text("cố lỗi khi lấy dữ liệu"));
            }
          },
        ),
      ),
    );
  }
}
