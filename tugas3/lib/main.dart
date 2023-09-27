import 'package:flutter/material.dart';
import 'package:tugas3/login.dart';
import 'package:tugas3/list_buku.dart';
import 'package:tugas3/tambah_buku.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/bookList': (context) => BookListScreen(),
        '/addBook': (context) => AddBookScreen(),
      },
    );
  }
}