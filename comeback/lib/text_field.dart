import 'package:flutter/material.dart';


class TextFieldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
      ),
      body: Center(
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Имя',
                  hintText: 'Введите имя',
                  icon: Icon(Icons.account_circle),
                  prefixIcon: Icon(Icons.fingerprint)
              ),
            ),
          )
      ),
    );
  }
}