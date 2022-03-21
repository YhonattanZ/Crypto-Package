import 'dart:convert';

import 'package:crypto_prueba/email_field.dart';
import 'package:crypto/crypto.dart';
import 'package:crypto_prueba/models/infojson.dart';
import 'package:crypto_prueba/models/json.dart';
import 'package:crypto_prueba/password_field.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var _textController = TextEditingController();
  var _textController2 = TextEditingController();

  final url = "https://demo.vpcloud.es/vpc2/login2";

  Future<Info?> userinfo() async {
    final response = await http.post(Uri.parse(url),
        body: json.encode({
          "username": "demo",
          "password":
              "ac073452332e003b105ea7707be4e91e2b999107c33357cd98ca6af570e232f57aed2699abb4483f994363977eacb3b27832b0f0e36dbd425eaee7386a7cce1b",
          "firebase": "xxxxx",
          "version": "V3",
          "tipoterminal": "ANDROID"
        }));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This provide total height and width of our screen
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Welcome to Crypto Package',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          Image.asset(
            'assets/images/btc2.png',
            width: size.width * 0.8,
          ),
          EmailField(size: size, textController: _textController2),
          const SizedBox(height: 10),
          PasswordField(size: size, textController: _textController),
          const SizedBox(height: 10),
          Container(
            height: size.height * 0.05,
            width: size.width * 0.3,
            child: ElevatedButton(
                onPressed: () {
                  //Email
                  print(sha512
                      .convert(utf8.encode(_textController2.text))
                      .toString());

                  //Password
                  print(sha512
                      .convert(utf8.encode(_textController.text))
                      .toString());
                  userinfo();
                },
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Colors.white,
                    onPrimary: Colors.black)),
          ),
        ],
      ),
    );
  }
}
