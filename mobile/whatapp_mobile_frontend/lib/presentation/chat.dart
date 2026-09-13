import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/presentation/authScreen.dart';
import 'package:whatapp_mobile_frontend/presentation/chatting.dart';
import 'package:whatapp_mobile_frontend/service/auth_service.dart';
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
              onPressed: () async {
                await AuthService().refreshtoken();
              },
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return _Loadingchat();
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
                    leading: Container(
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
                              style: TextStyle(fontSize: 18),
                            )
                          : null,
                    ),
                    title: Text(
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      lastMsg == "" ? "Bắt đầu nhắn ngay" : lastMsg,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
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

class _Loadingchat extends StatelessWidget {
  const _Loadingchat({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListTile(
        subtitle: Text("khoadonguyen13122gmail.com"),
        leading: Bone.circle(size: 50),
        title: Text("Đỗ Nguyễn Việt Khoa"),
      ),
    );
  }
}
