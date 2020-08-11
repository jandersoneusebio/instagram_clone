import 'package:flutter/material.dart';
import 'package:instagram_clone/components/direct/ChatTile.dart';

class DirectScreen extends StatefulWidget {
  @override
  _DirectScreenState createState() => _DirectScreenState();
}

class _DirectScreenState extends State<DirectScreen> {

  List<String> _nomes = [
    "nala_cat",
    "grumpy_cat",
    "bread_cat",
  ];

  var _avatares = [
    "https://1.bp.blogspot.com/-jDMKGaz1BrM/XyhEuAJllcI/AAAAAAABWRY/Wuox9Bstw1cOr74iHau47dfxsM3P6E1WgCLcBGAsYHQ/s1600/1.jpg",
    "https://cutecatsinhats-x7v0etsjgzjvirs3.netdna-ssl.com/wp-content/uploads/2019/10/komii-Pet-CostumeCreative-Toast-cat-Headdress-Soft-Bread-Slice-Collar-for-Cats-Toast-Bread-hat-Bread-Shaped-pet-hat-Easy-to-Remove-Cute-pet-Makeup-cat-Cosplay-Cap-cat-Toy-0-5-600x600.jpg",
    "https://cdn.dicionariopopular.com/imagens/grumpy-cat-cke.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Direct"),
      ),
      body: Container(
        child: Column(
          children: [
            ChatTile(
              nome: _nomes[2],
              avatar: _avatares[1],
              ultMsg: "Grr",
            ),
            ChatTile(
              nome: _nomes[1],
              avatar: _avatares[2],
              ultMsg: "PÃO",
            ),
            ChatTile(
              nome: _nomes[0],
              avatar: _avatares[0],
              ultMsg: "I loaf you",
            ),
          ],
        ),
      ),
    );
  }
}
