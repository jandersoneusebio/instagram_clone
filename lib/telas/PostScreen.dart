import 'package:flutter/material.dart';
import 'package:instagram_clone/components/PostContainer.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();

  final String nome;
  final String avatar;
  final String postImage;
  final String userAvatar;
  PostScreen({@required this.nome, @required this.avatar, @required this.postImage, @required this.userAvatar});

}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
      ),
      body: SingleChildScrollView(
        child: PostContainer(
          postNome: widget.nome,
          postAvatar: widget.avatar,
          postImage: widget.postImage,
          userAvatar: widget.userAvatar),
      )
    );
  }
}
