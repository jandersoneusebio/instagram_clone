import 'package:flutter/material.dart';
import 'package:instagram_clone/telas/PostScreen.dart';

class ProfilePost extends StatelessWidget {
  final String _post = "https://sadanduseless.b-cdn.net/wp-content/uploads/2019/06/cat-breading7.jpg";

  final String nome;
  final String avatar;
  final String userAvatar;
  ProfilePost({@required this.nome, @required this.avatar, @required this.userAvatar});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PostScreen(nome: nome, avatar: avatar, postImage: _post, userAvatar: userAvatar,)
          )
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 2),
        width: 136,
        height: 136,
        child: FittedBox(
          child: Image.network(_post),
          fit: BoxFit.fill,
        ),
      )
    );
  }
}
