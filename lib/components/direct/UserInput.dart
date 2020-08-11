import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {

  final String avatar;
  UserInput({@required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container( // Input do usuário
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.3,
            color: Colors.black
          )
        )
      ),
      height: 50,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Flexible( // Adaptar a row à largura do dispositivo para que os widgets não deem overflow
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Mensagem...",
                      icon: CircleAvatar(
                        backgroundImage: NetworkImage(avatar),
                        radius: 16,
                      )
                  ),
                ),
              ),

              ButtonTheme(
                minWidth: 40,
                height: 40,
                child: FlatButton(
                  child: Icon(Icons.send),
                  onPressed: (){
                    // Sistema de mensagens não funciona (ainda), espero aprender em breve ^^
                  },
                ),
              )
            ],
          )
        )
    );
  }
}
