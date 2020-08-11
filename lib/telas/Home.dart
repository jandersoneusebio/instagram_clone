import 'package:flutter/material.dart';
import 'package:instagram_clone/components/PostContainer.dart';
import 'package:instagram_clone/components/StoryComponent.dart';
import 'package:instagram_clone/telas/DirectScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _nomes = [
    "nala_cat",
    "grumpy_cat",
    "bread_cat",
    "cat_breading"
  ];

  var _avatares = [
    "https://1.bp.blogspot.com/-jDMKGaz1BrM/XyhEuAJllcI/AAAAAAABWRY/Wuox9Bstw1cOr74iHau47dfxsM3P6E1WgCLcBGAsYHQ/s1600/1.jpg",
    "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
    "https://cdn.dicionariopopular.com/imagens/grumpy-cat-cke.jpg"
  ];

  var _posts = [
    "https://i.redd.it/gtku28e5r7631.jpg"
  ];

  String _userAvatar = "https://sadanduseless.b-cdn.net/wp-content/uploads/2019/06/cat-breading7.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.photo_camera, size: 30, color: Colors.black,),
                Image.asset("assets/images/logo.png", width: 100),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DirectScreen()
                      )
                    );
                  },
                  child: Image.asset("assets/images/direct.png", width: 25),
                )
              ],
            )
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Container(
                  padding: EdgeInsets.only(bottom: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 0.3
                      )
                    )
                  ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          StoryComponent(storiesAvatar: _avatares[0],nome: _nomes[0],),
                          StoryComponent(storiesAvatar: _avatares[2],nome: _nomes[1]),
                          StoryComponent(storiesAvatar: _avatares[1],nome: _nomes[2]),
                          StoryComponent(storiesAvatar: _avatares[0],nome: _nomes[0]),
                          StoryComponent(storiesAvatar: _avatares[1],nome: _nomes[2]),
                          StoryComponent(storiesAvatar: _avatares[2],nome: _nomes[1]),
                        ],
                      ),
                    )
                ),
              ),
              PostContainer(
                postNome: _nomes[0],
                postAvatar: _avatares[0],
                postImage: _posts[0],
                userAvatar: _userAvatar,
              ),
              PostContainer(
                postNome: _nomes[1],
                postAvatar: _avatares[2],
                postImage: _posts[0],
                userAvatar: _userAvatar,
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: Colors.black, size: 40),
              Icon(Icons.search, color: Colors.black, size: 40),
              Icon(Icons.add_box, color: Colors.black, size: 40),
              Icon(Icons.favorite_border, color: Colors.black, size: 40),
              Icon(Icons.account_circle, color: Colors.black, size: 40)
            ],
          ),
        )
      ),
    );
  }
}


