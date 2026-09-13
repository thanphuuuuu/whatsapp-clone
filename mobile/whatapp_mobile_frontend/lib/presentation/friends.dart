import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:toastification/toastification.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/presentation/friend_peding.dart';
import 'package:whatapp_mobile_frontend/service/friend_service.dart';
import 'package:whatapp_mobile_frontend/service/user_service.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Danh bạ & kết bạn"),
        elevation: 0.5,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: DynamicSearchSreen());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FriendPeding()),
                  );
                },
                leading: Icon(CupertinoIcons.person),
                title: const Text(
                  "Lời mời kết bạn",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(width: 8),
                    const Icon(
                      CupertinoIcons.chevron_right,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),

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
                          leading: Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromARGB(55, 0, 0, 0),
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(data[index].avatar),
                              ),
                            ),
                          ),
                          title: Text(
                            data[index].username,
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: data[index].isOnline
                              ? Text(
                                  "Đang hoạt động",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.green,
                                  ),
                                )
                              : Text(
                                  "Ngoại tuyến",
                                  style: TextStyle(color: Colors.grey),
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
        leading: Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(shape: BoxShape.circle),
        ),
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

class DynamicSearchSreen extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(CupertinoIcons.back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(child: Text("Result"));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
      future: UserService().searchUser(query),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: LoadingAnimationWidget.staggeredDotsWave(
              color: Theme.of(context).colorScheme.primary,
              size: 12,
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text("Có lỗi"));
        } else {
          final data = snapshot.data!.data.users;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final user = data[index];

              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF8F9FA),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),

                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 24,
                        backgroundColor: const Color(0xFFD8F3EC),
                        backgroundImage:
                            user.avatar.isNotEmpty &&
                                user.avatar.contains('base64,')
                            ? MemoryImage(
                                base64Decode(user.avatar.split('base64,').last),
                              )
                            : null,
                        child: user.avatar.isEmpty
                            ? Text(
                                user.fullName.isNotEmpty
                                    ? user.fullName[0].toUpperCase()
                                    : 'U',
                                style: const TextStyle(
                                  color: Color(0xFF00A86B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              )
                            : null,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: user.isOnline
                                ? Colors.green
                                : const Color(0xFFAFAFAF),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),

                  title: Text(
                    user.fullName,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black87,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 2),

                    child: Text(
                      '@${user.username}',
                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),

                  trailing: OutlinedButton.icon(
                    onPressed: () async {
                      try {
                        final thanh_cong = await FriendService().addFriend(
                          data[index].id,
                        );
                      } catch (Error) {
                        toastification.show(
                          autoCloseDuration: Duration(seconds: 1),
                          type: ToastificationType.error,
                          title: Text(Error.toString()),
                        );
                      }
                    },
                    icon: const Icon(
                      Icons.person_add_alt_outlined,
                      size: 18,
                      color: Colors.black87,
                    ),
                    label: const Text(
                      'Kết bạn',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      side: BorderSide(color: Colors.grey.shade300),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              );
            },
          );
        }
      },
    );
  }
}
