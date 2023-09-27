import 'package:flutter/material.dart';
import 'package:tugas3/models/books.dart';

class AddBookScreen extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Buku'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                final newBook = Book(
                  title: titleController.text,
                  description: descriptionController.text,
                );
                Navigator.pop(context, newBook);
              },
              child: Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}