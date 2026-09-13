import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whatapp_mobile_frontend/logger_config.dart';
import 'package:whatapp_mobile_frontend/presentation/authScreen.dart';
import 'package:whatapp_mobile_frontend/presentation/chatting.dart';
import 'package:whatapp_mobile_frontend/service/auth_service.dart';
import 'package:whatapp_mobile_frontend/service/conversation_service.dart';
import 'package:whatapp_mobile_frontend/service/friend_service.dart';
import 'package:whatapp_mobile_frontend/token_util.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String? _currentUserId;

  @override
  void initState() {
    super.initState();
    _loadCurrentUser();
  }

  Future<void> _loadCurrentUser() async {
    final userId = await TokenStorage.getUser_id();
    if (userId != null) {
      setState(() => _currentUserId = userId);
    }
  }

  String _formatTime(String? isoString) {
    if (isoString == null || isoString.isEmpty) return '';
    final time = DateTime.parse(isoString).toLocal();
    final now = DateTime.now();
    final isToday =
        time.year == now.year && time.month == now.month && time.day == now.day;

    if (isToday) {
      return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
    }
    return '${time.day.toString().padLeft(2, '0')}/${time.month.toString().padLeft(2, '0')}';
  }

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
                showDialog(
                  context: context,
                  builder: (context) {
                    return CreateGroupDialog();
                  },
                );
              },
              icon: Icon(Icons.group_add),
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
            } else if (snapshot.hasError) {
              return Center(child: Text("Có lỗi khi lấy dữ liệu"));
            } else if (snapshot.connectionState == ConnectionState.done) {
              final conversations = snapshot.data!.data.conversations;

              if (conversations.isEmpty) {
                return const Center(child: Text("Chưa có cuộc trò chuyện nào"));
              }

              return ListView.builder(
                itemCount: conversations.length,
                itemBuilder: (context, index) {
                  final item = conversations[index];
                  final otherMember = item.isGroup
                      ? null
                      : item.members.firstWhere(
                          (m) => m.id != _currentUserId,
                          orElse: () => item.members.first,
                        );

                  final name = item.isGroup
                      ? item.groupName
                      : (otherMember?.fullName ?? '');
                  final avatar = item.isGroup
                      ? item.groupAvatar
                      : (otherMember?.avatar ?? '');
                  final lastMsg = item.lastMessage?.content ?? '';
                  final time = _formatTime(
                    item.lastMessage?.createdAt.toString(),
                  );

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
                    trailing: time.isEmpty
                        ? null
                        : Text(
                            time,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
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
              return Center(child: Text("Có lỗi khi lấy dữ liệu"));
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

class CreateGroupDialog extends StatefulWidget {
  const CreateGroupDialog({super.key});

  @override
  State<CreateGroupDialog> createState() => _CreateGroupDialogState();
}

class _CreateGroupDialogState extends State<CreateGroupDialog> {
  final Set<String> _selectedIds = {};
  late final Future<dynamic> _friendsFuture;

  @override
  void initState() {
    super.initState();
    _friendsFuture = FriendService().getFriends();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Tạo nhóm mới"),
      content: FutureBuilder(
        future: _friendsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Text("Đang loading danh sách bạn"));
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            final friends = snapshot.data!.data.friends;
            return SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  final friend = friends[index];
                  final isChecked = _selectedIds.contains(friend.id);
                  return ListTile(
                    leading: Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            _selectedIds.add(friend.id);
                          } else {
                            _selectedIds.remove(friend.id);
                          }
                        });
                      },
                    ),
                    title: Text(friend.fullName),
                    subtitle: Text(friend.email),
                  );
                },
              ),
            );
          }
        },
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Hủy"),
        ),
        TextButton(
          onPressed: _selectedIds.isEmpty
              ? null
              : () {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        _GroupNameDialog(memberIds: _selectedIds.toList()),
                  );
                },
          child: const Text("Tạo nhóm"),
        ),
      ],
    );
  }
}

class _GroupNameDialog extends StatefulWidget {
  final List<String> memberIds;

  const _GroupNameDialog({required this.memberIds});

  @override
  State<_GroupNameDialog> createState() => _GroupNameDialogState();
}

class _GroupNameDialogState extends State<_GroupNameDialog> {
  final _controller = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _handleConfirm() async {
    final name = _controller.text.trim();
    if (name.isEmpty) return;

    setState(() => _isLoading = true);

    try {
      await ConversationService().createGroup(
        groupName: name,
        memberIds: widget.memberIds,
      );
      if (mounted) {
        Navigator.pop(context);
        Navigator.pop(context);
      }
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Lỗi: $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Nhập tên nhóm"),
      content: TextField(
        controller: _controller,
        autofocus: true,
        enabled: !_isLoading,
        decoration: const InputDecoration(hintText: "Tên nhóm"),
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => Navigator.pop(context),
          child: const Text("Hủy"),
        ),
        TextButton(
          onPressed: _isLoading ? null : _handleConfirm,
          child: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Text("Xác nhận"),
        ),
      ],
    );
  }
}
