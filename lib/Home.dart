import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                Image.asset("assets/images/direct.png", width: 25)
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
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
                              ),
                              radius: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
                              ),
                              radius: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
                              ),
                              radius: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
                              ),
                              radius: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
                              ),
                              radius: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
                              ),
                              radius: 40,
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ),
              Container(
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
                                    "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
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
                              image: NetworkImage("https://i.redd.it/gtku28e5r7631.jpg"),
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
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
                      child: Container(
                        color: Colors.grey,
                        width: 60,

                        )
                      )
                  ],
                ),
              ),
              Container(
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
                                    "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
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
                              image: NetworkImage("https://i.redd.it/gtku28e5r7631.jpg"),
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
