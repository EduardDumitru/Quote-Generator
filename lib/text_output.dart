import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String _text;

  const TextOutput(this._text, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          _text,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ));
  }
}
