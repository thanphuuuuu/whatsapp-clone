import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:whatapp_mobile_frontend/model/user_response.dart';
import 'package:whatapp_mobile_frontend/provider/auth_state_provider.dart';
import 'package:whatapp_mobile_frontend/service/user_service.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Scaffold(
          appBar: AppBar(title: Text("Hồ sơ cá nhân")),
          body: FutureBuilder(
            future: UserService().getUserInfo(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return _UserSkeleton();
              } else if (snapshot.hasError) {
                return Center(child: Text("co loi khi lay du lieu nguoi dung"));
              } else {
                final data = snapshot.data!;
                return _Userrender(data: data);
              }
            },
          ),
        ),
      ),
    );
  }
}

class _Userrender extends StatefulWidget {
  const _Userrender({super.key, required this.data});
  final UserResponse data;

  @override
  State<_Userrender> createState() => __UserrenderState();
}

class __UserrenderState extends State<_Userrender> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: SizedBox(
            height: 65,
            width: 65,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.data.data.user.avatar),
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          title: Text(widget.data.data.user.fullName),
          subtitle: OutlinedButton(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            ),
            onPressed: () {},
            child: Text("Thay đổi ảnh đại diện"),
          ),
        ),
        TextField(decoration: InputDecoration()),
        ListTile(
          title: Text("Tên tài khoản"),
          subtitle: Text(widget.data.data.user.username),
        ),
        ListTile(
          title: Text("Gmail"),
          subtitle: Text(widget.data.data.user.email),
        ),
        ListTile(
          title: Text("Đăng xuất"),
          onTap: () async {
            final authstateprovider = await Provider.of<AuthStateProvider>(
              context,
              listen: false,
            );
            authstateprovider.logout();
          },
        ),
      ],
    );
  }
}

class _UserSkeleton extends StatelessWidget {
  const _UserSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Column(
        children: [
          ListTile(
            leading: const SizedBox(
              height: 65,
              width: 65,
              child: CircleAvatar(),
            ),
            title: const Text("Đỗ Nguyễn Việt Khoa"),
            subtitle: OutlinedButton(
              onPressed: null,
              child: const Text("Thay đổi ảnh đại diện"),
            ),
          ),

          const TextField(
            decoration: InputDecoration(hintText: "Đỗ Nguyễn Việt Khoa"),
          ),

          const ListTile(
            title: Text("Tên tài khoản"),
            subtitle: Text("khangdo2011"),
          ),

          const ListTile(title: Text("Gmail"), subtitle: Text("Abc@gmail.com")),

          const ListTile(title: Text("Đăng xuất")),
        ],
      ),
    );
  }
}
