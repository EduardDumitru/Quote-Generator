// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/extensions/list_extensions.dart';
import 'package:flutter_assignment/text_output.dart';

import 'class/author.dart';
import 'class/quote.dart';

class TextControl extends StatefulWidget {
  const TextControl({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _TextControl();
  }
}

class _TextControl extends State<TextControl> {
  final List<Author> _authors = initializeData();
  late Author _author;
  late Quote _quote;
  String resultQuote = "";
  void handleQuote() {
    _author = _authors.randomItem();
    _quote = Quote(author: _author.name, text: _author.quotes.randomItem());
    setState(() {
      resultQuote = "${_quote.author} - ${_quote.text}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      TextOutput(
        resultQuote,
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: RaisedButton(
              onPressed: handleQuote,
              child: const Text("Generate Quote!",
                  style: TextStyle(fontSize: 20, color: Colors.blue))))
    ]);
  }
}
