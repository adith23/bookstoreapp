import 'package:flutter/material.dart';
import '../widgets/book.dart';

/// BookList widget
/// Uses the [Book] widget to display a list of books.
class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ceylon Bookstore'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(   
          child: ListView(
            children: const [
              Book(
                coverImagePath: 'assets/images/images.jpg',
                title: 'Rich Dad, Poor Dad',
                author: 'Robert T. Kiyosaki',
                price: 1250,
              ),
              Book(
                coverImagePath: 'assets/images/images1.jpg',
                title: 'The Alchemist',
                author: 'Coelho Paulo',
                price: 1000,
              ),
              Book(
                coverImagePath: 'assets/images/images2.jpg',
                title: 'Men Are from Mars',
                author: 'John Gray',
                price: 1350,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
