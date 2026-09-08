import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/presentation/authScreen.dart';

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
      ),
    );
  }
}
