import 'package:flutter/material.dart';
import 'package:whatapp_mobile_frontend/model/conversations_response.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key, required this.conversation_data});
  final Conversation conversation_data;

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: ListTile(
            leading: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.conversation_data.isGroup == false
                        ? widget.conversation_data.groupAvatar
                        : "",
                  ),
                ),
              ),
            ),
            title: Text(widget.conversation_data.members.first.fullName),
          ),
        ),
      ),
    );
  }
}
