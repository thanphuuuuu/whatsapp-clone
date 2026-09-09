import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';
import 'package:whatapp_mobile_frontend/config.dart';
import 'package:whatapp_mobile_frontend/presentation/authScreen.dart';
import 'package:whatapp_mobile_frontend/presentation/chat.dart';
import 'package:whatapp_mobile_frontend/presentation/friends.dart';
import 'package:whatapp_mobile_frontend/presentation/user.dart';
import 'package:whatapp_mobile_frontend/provider/auth_state_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthStateProvider()..checkToken(),
        ),
      ],
      child: AppCore(),
    ),
  );
}

class AppCore extends StatefulWidget {
  const AppCore({super.key});

  @override
  State<AppCore> createState() => _AppCoreState();
}

class _AppCoreState extends State<AppCore> {
  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
        theme: AppTheme.light,
        home: DefaultTabController(
          length: 3,
          child: Consumer<AuthStateProvider>(
            builder: (context, authState, child) {
              if (authState.status == AuthStatus.unknown) {
                return const Scaffold(
                  body: Center(child: CircularProgressIndicator()),
                );
              }

              if (authState.status == AuthStatus.authenticated) {
                return DefaultTabController(
                  length: 3,
                  child: Scaffold(
                    body: const TabBarView(
                      children: [Chat(), Friends(), User()],
                    ),
                    bottomNavigationBar: const TabBar(
                      tabs: [
                        Tab(text: "Chat", icon: Icon(Icons.chat)),
                        Tab(text: "Friend", icon: Icon(Icons.person)),
                        Tab(text: "User", icon: Icon(Icons.verified_user)),
                      ],
                    ),
                  ),
                );
              }

              return const Authscreen();
            },
          ),
        ),
      ),
    );
  }
}
