import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram_clone/components/direct/ChatBubble.dart';
import 'package:instagram_clone/components/direct/UserChatBubble.dart';
import 'package:instagram_clone/components/direct/UserInput.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();

  final String nome;
  final String avatar;
  ChatScreen({this.nome, @required this.avatar});
}

class _ChatScreenState extends State<ChatScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(widget.avatar)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(widget.nome),
            )
          ],
        )
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          verticalDirection: VerticalDirection.up,
          children: [
            UserInput(avatar: widget.avatar), // Container do input do usuário (mensagem)
            Container( // Container das mensagens enviadas
              child: Column(
                children: [
                  ChatBubble(),
                  UserChatBubble()
                ],
              ),
            )
          ],
        )
      )
    );
  }
}
