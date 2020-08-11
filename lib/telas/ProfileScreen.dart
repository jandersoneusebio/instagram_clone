import 'package:flutter/material.dart';
import 'package:instagram_clone/components/BottomBar.dart';
import 'package:instagram_clone/components/StoryComponent.dart';
import 'package:instagram_clone/components/profile/InfoButtons.dart';
import 'package:instagram_clone/components/profile/ProfilePost.dart';

class ProfileScreen extends StatefulWidget {
  final String avatar;
  final String nome;
  final String userAvatar;

  ProfileScreen({@required this.nome, @required this.avatar, @required this.userAvatar});
  @override
  _ProfileScreenState createState() => _ProfileScreenState();

}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nome),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 0.5,
                          color: Colors.black
                      )
                  )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(widget.avatar),
                              radius: 40,
                            ),
                            InfoButtons(text: "Publicações", number: "0",),
                            InfoButtons(text: "Seguidores", number: "0"),
                            InfoButtons(text: "Seguindo", number: "5"),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.only(top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.nome,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                    "Bio do usuário"
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 0.5,
                    color: Colors.black
                  )
                )
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      StoryComponent(storiesAvatar: widget.userAvatar, nome: "Destaque 1",),
                      StoryComponent(storiesAvatar: widget.userAvatar, nome: "Destaque 2",)
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                      ProfilePost(nome: widget.nome, avatar: widget.avatar, userAvatar: widget.userAvatar),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
