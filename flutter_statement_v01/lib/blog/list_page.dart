import 'package:flutter/material.dart';
import 'package:flutter_statement_v01/blog/book.dart';

class ListPage extends StatelessWidget {
  final Function onSelectedBook;

  final List<Book> selectedBook;

  const ListPage(
      {required this.onSelectedBook, required this.selectedBook, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: books.map((book) {
        final isSelectedBool = selectedBook.contains(book);
        return ListTile(
          leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          title: Text(
            book.title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(book.writer),
          trailing: IconButton(
            onPressed: () {
              onSelectedBook(book);
            },
            icon: Icon(isSelectedBool ? Icons.remove_circle : Icons.add),
            color: isSelectedBool ? Colors.red : Colors.green,
          ),
        );
      }).toList(),
    );
  }
}
