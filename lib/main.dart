import 'package:crypto_prueba/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Demo',
      home: WelcomeScreen(),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.purple.shade100,
        borderRadius: BorderRadius.circular(29),
      ),
    );
  }
}
