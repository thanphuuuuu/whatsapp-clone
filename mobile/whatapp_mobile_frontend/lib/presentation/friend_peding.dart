import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whatapp_mobile_frontend/service/friend_service.dart';

class FriendPeding extends StatefulWidget {
  const FriendPeding({super.key});

  @override
  State<FriendPeding> createState() => _FriendPedingState();
}

class _FriendPedingState extends State<FriendPeding> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildSkeleton() {
    return Skeletonizer(
      enabled: true,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const ListTile(
            leading: CircleAvatar(radius: 26),
            title: Text("Người dùng đang tải..."),
            subtitle: Text("Đang chờ xử lý lời mời"),
            trailing: SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.check),
                  SizedBox(width: 8),
                  Icon(Icons.close),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Lời mời kết bạn"),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Đã nhận"),
                Tab(text: "Đã gửi"),
              ],
            ),
          ),
          body: FutureBuilder(
            future: FriendService().getFriendPeding(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return TabBarView(
                  children: [_buildSkeleton(), _buildSkeleton()],
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "Có lỗi xảy ra: ${snapshot.error}",
                    textAlign: TextAlign.center,
                  ),
                );
              }

              if (snapshot.hasData) {
                final receivedRequests = snapshot.data!.data.receivedRequests;
                final sentRequests = snapshot.data!.data.sentRequests;

                return TabBarView(
                  children: [
                    _buildReceivedList(receivedRequests),
                    _buildSentList(sentRequests),
                  ],
                );
              }

              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildReceivedList(List requests) {
    if (requests.isEmpty) {
      return const Center(
        child: Text("Không có lời mời kết bạn", style: TextStyle(fontSize: 16)),
      );
    }

    return ListView.builder(
      itemCount: requests.length,
      itemBuilder: (context, index) {
        final request = requests[index];
        final user = request.sender;

        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: user!.avatar.isNotEmpty
                ? NetworkImage(user.avatar)
                : null,
            child: user.avatar.isEmpty ? const Icon(Icons.person) : null,
          ),
          title: Text(
            user.fullName,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text("@${user.username}"),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () async {
                  await FriendService().accept_friend_invite(request.id);
                  setState(() {});
                },
                icon: const Icon(Icons.check),
              ),
              IconButton(
                onPressed: () async {
                  await FriendService().decined_invite_friend(request.id);
                  setState(() {});
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSentList(List requests) {
    if (requests.isEmpty) {
      return const Center(
        child: Text(
          "Chưa gửi lời mời kết bạn nào",
          style: TextStyle(fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      itemCount: requests.length,
      itemBuilder: (context, index) {
        final request = requests[index];
        final user = request.receiver;

        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 6,
          ),
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: user.avatar.isNotEmpty
                ? NetworkImage(user.avatar)
                : null,
            child: user.avatar.isEmpty ? const Icon(Icons.person) : null,
          ),
          title: Text(
            user.fullName,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text("@${user.username}"),
          trailing: const Text(
            "Đang chờ",
            style: TextStyle(color: Colors.grey),
          ),
        );
      },
    );
  }
}
