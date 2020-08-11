import 'package:flutter/material.dart';

class StoryComponent extends StatelessWidget {

  final String storiesAvatar;
  final String nome;

  StoryComponent({this.storiesAvatar,this.nome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              storiesAvatar,
            ),
            radius: 34,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              nome,
              style: TextStyle(
                fontSize: 12
              ),
            ),
          )
        ],
      )
    );
  }
}
