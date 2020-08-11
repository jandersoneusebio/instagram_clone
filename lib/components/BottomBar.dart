import 'package:flutter/material.dart';
import 'package:instagram_clone/telas/ProfileScreen.dart';

class BottomBar extends StatelessWidget {

  final String nome = "user";
  final String avatar = "https://sadanduseless.b-cdn.net/wp-content/uploads/2019/06/cat-breading7.jpg";

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.home, color: Colors.black, size: 40),
              Icon(Icons.search, color: Colors.black, size: 40),
              Icon(Icons.add_box, color: Colors.black, size: 40),
              Icon(Icons.favorite_border, color: Colors.black, size: 40),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileScreen(nome: nome, avatar: avatar, userAvatar: avatar,)
                      )
                  );
                },
                child: Icon(Icons.account_circle, color: Colors.black, size: 40),
              )
            ],
          ),
        )
    );
  }
}
