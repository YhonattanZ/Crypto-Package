import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
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
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: Colors.white60, borderRadius: BorderRadius.circular(29)),
      child: TextField(
          controller: _textController,
          decoration: const InputDecoration(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              hintText: 'Your Email',
              border: InputBorder.none)),
    );
  }
}
