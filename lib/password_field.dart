import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key? key,
    required this.size,
    required TextEditingController textController,
  })  : _textController = textController,
        super(key: key);

  final Size size;
  final TextEditingController _textController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(29)),
      child: TextField(
          controller: _textController,
          decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                color: Colors.black,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: Colors.black,
              ),
              hintText: 'Your Password',
              border: InputBorder.none)),
    );
  }
}
