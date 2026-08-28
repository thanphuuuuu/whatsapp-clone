import 'package:flutter/material.dart';

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
        appBar: AppBar(title: Text("Chating")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.only(bottom: 12),
              leading: Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(64, 255, 86, 34),
                ),
              ),
            );
          },
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
