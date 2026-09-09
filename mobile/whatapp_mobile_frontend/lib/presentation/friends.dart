import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whatapp_mobile_frontend/service/friend_service.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Danh bạ & kết bạn"), elevation: 0.5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {},
                leading: Icon(CupertinoIcons.person),
                title: const Text(
                  "Lời mời kết bạn",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      CupertinoIcons.chevron_right,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 1, height: 1),
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
                child: Text(
                  "Danh sách bạn bè",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              FutureBuilder(
                future: FriendService().getFriends(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 12,
                      itemBuilder: (context, index) {
                        return LoadingFriendCard();
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text("có lỗi"));
                  } else {
                    final data = snapshot.data!.data.friends;
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(data[index].avatar),
                          ),
                          title: Text(
                            data[index].username,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            data[index].isOnline
                                ? "Đang hoạt động"
                                : "Ngoại tuyến",
                            style: TextStyle(fontSize: 12, color: Colors.green),
                          ),
                          trailing: IconButton(
                            icon: const Icon(
                              CupertinoIcons.chat_bubble_text_fill,
                              color: Colors.blue,
                            ),
                            onPressed: () {},
                          ),
                          onTap: () {},
                        );
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingFriendCard extends StatelessWidget {
  const LoadingFriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: ListTile(
        leading: const CircleAvatar(radius: 22, child: Text('A')),
        title: const Text(
          'Người dùng đang tải...',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: const Text('Đang hoạt động', style: TextStyle(fontSize: 12)),
        trailing: IconButton(
          icon: const Icon(CupertinoIcons.chat_bubble_text_fill),
          onPressed: null,
        ),
      ),
    );
  }
}
