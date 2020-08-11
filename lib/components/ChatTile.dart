import 'package:flutter/material.dart';

class ChatTile extends StatefulWidget {
  @override
  _ChatTileState createState() => _ChatTileState();

  final String nome;
  final String avatar;
  final String ultMsg;
  ChatTile({
    this.nome,
    @required this.avatar,
    this.ultMsg
  });
}

class _ChatTileState extends State<ChatTile> {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      onTap: (){

      },
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                widget.avatar,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nome,
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                Text(
                  widget.ultMsg,
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
