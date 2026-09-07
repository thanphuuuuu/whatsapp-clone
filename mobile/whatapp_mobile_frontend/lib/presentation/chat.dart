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
          title: Text("Chating"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Authscreen()),
                );
              },
              icon: Icon(CupertinoIcons.play),
            ),
          ],
        ),
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
