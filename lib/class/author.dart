class Author {
  late String name;
  late List<String> quotes;

  Author({required this.name, required this.quotes});
}

List<Author> initializeData() {
  return [
    Author(name: "Oscar Wilde", quotes: [
      "Be yourself; everyone else is already taken.",
      "To live is the rarest thing in the world. "
          "Most people exist, that is all.",
      "Always forgive your enemies; nothing annoys them so much."
    ]),
    Author(name: "Albert Einstein", quotes: [
      "Two things are infinite: the universe and human stupidity; "
          "and I'm not sure about the universe.",
      "There are only two ways to live your life. "
          "One is as though nothing is a miracle. "
          "The other is as though everything is a miracle.",
      "If you can't explain it to a six year old, "
          "you don't understand it yourself."
    ])
  ];
}
