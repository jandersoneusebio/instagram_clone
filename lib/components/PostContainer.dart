import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {

  String _postImages = "https://i.redd.it/gtku28e5r7631.jpg";
  String _userAvatar = "https://sadanduseless.b-cdn.net/wp-content/uploads/2019/06/cat-breading7.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          _userAvatar,
                        ),
                        radius: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "nome_aleatorio",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Icon(Icons.more_horiz, size: 30,),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Container(
                  color: Colors.black,
                  child: Image(
                    image: NetworkImage(_postImages),
                  )
              )
          ),
          Padding(
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
        ],
      ),
    );
  }
}
