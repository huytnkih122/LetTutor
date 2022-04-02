import 'package:LetTutor/modules/Book/BookCard.dart';
import 'package:flutter/material.dart';

class ListBooks extends StatefulWidget {
  const ListBooks({Key? key}) : super(key: key);

  @override
  State<ListBooks> createState() => _ListBooksState();
}

class _ListBooksState extends State<ListBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookCard()
    );
  }
}
