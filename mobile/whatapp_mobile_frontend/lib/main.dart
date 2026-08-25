import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/config.dart';
import 'package:whatapp_mobile_frontend/presentation/chat.dart';
import 'package:whatapp_mobile_frontend/presentation/friends.dart';
import 'package:whatapp_mobile_frontend/presentation/user.dart';

void main() {
  runApp(AppCore());
}

class AppCore extends StatefulWidget {
  const AppCore({super.key});

  @override
  State<AppCore> createState() => _AppCoreState();
}

class _AppCoreState extends State<AppCore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [Chat(), Friends(), User()]),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(text: "Chat", icon: Icon(Icons.chat)),
              Tab(text: "Friend", icon: Icon(Icons.person)),
              Tab(text: "User", icon: Icon(Icons.verified_user)),
            ],
          ),
        ),
      ),
    );
  }
}
