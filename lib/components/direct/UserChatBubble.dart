import 'package:flutter/material.dart';

class UserChatBubble extends StatefulWidget {
  @override
  _UserChatBubbleState createState() => _UserChatBubbleState();
}

class _UserChatBubbleState extends State<UserChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.all(10),
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xffded9ce),
        ),
        child: Center(
          child: Text("Mensagem Enviada"),
        ),
      ),
    );
  }
}
