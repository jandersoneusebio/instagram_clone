import 'package:flutter/material.dart';
import 'package:instagram_clone/telas/ProfileScreen.dart';

class PostContainer extends StatelessWidget {

  final String postNome;
  final String postImage;
  final String postAvatar;
  final String userAvatar;
  PostContainer({
    this.postNome,
    @required this.postAvatar,
    @required this.postImage,
    @required this.userAvatar
  });


  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border( // Separador
          bottom: BorderSide(
            width: 0.3,
            color: Colors.black
          )
        )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container( // Cabeçalho do post
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(nome: postNome, avatar: postAvatar, userAvatar: userAvatar,)
                        )
                      );
                    },
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            postAvatar,
                          ),
                          radius: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            postNome,
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(Icons.more_horiz, size: 30,),
              )
            ],
          ),
          Padding( // Imagem do post
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                  color: Colors.black,
                  child: Image(
                    image: NetworkImage(postImage),
                  ),
              )
          ),
          Padding( // Ações
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 110,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.favorite_border, size: 32,),
                          Icon(Icons.chat_bubble_outline, size: 32,),
                          Image.asset("assets/images/direct.png", width: 30,),
                        ],
                      ),
                    ),
                    Icon(Icons.bookmark_border, size: 36,)
                  ]
              ),
            ),
          ),
          Padding( // Sessão de Comentário
            padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Comentar...",
                  icon: CircleAvatar(
                    backgroundImage: NetworkImage(
                      userAvatar
                    ),
                    radius: 16,
                  )
                ),
              )
          )
        ],
      ),
    );
  }
}
