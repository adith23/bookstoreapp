import 'package:flutter/material.dart';
import '../widgets/book.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 5), 
            child: Text(
              'Inkwell Books',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: const Color(0xFF9391FF),
        ),
        backgroundColor: const Color.fromARGB(255, 236, 220, 255),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 15, bottom: 10),
                  child: Text(
                    'Popular Books',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 340,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Book(
                        coverImagePath: 'assets/images/images8.jpg',
                        title: 'Shoe Dog',
                        author: 'Phil Knight',
                        price: 1350,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images5.jpg',
                        title: 'Thinking, Fast and Slow',
                        author: 'Daniel Kahneman',
                        price: 1250,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images7.jpg',
                        title: 'The Richest Man in Babylon',
                        author: 'George S. Clason',
                        price: 1000,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images2.jpg',
                        title: 'Men are from mars women are from venus',
                        author: 'John Gray',
                        price: 1500,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images1.jpg',
                        title: 'The Alchemist',
                        author: 'Paulo Coelho',
                        price: 1800,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images3.jpg',
                        title: 'The Psychology of Money',
                        author: 'Morgan Housel',
                        price: 1600,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images.jpg',
                        title: 'Rich Dad and Poor Dad',
                        author: 'Robert T. Kiyosaki',
                        price: 1700,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images4.jpg',
                        title: '48 Laws of Power',
                        author: 'Robert Greene',
                        price: 1900,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 15, bottom: 10),
                  child: Text(
                    'New Releases',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 340,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Book(
                        coverImagePath: 'assets/images/images9.jpg',
                        title: 'Onyx Storm',
                        author: 'Rebecca Yarros',
                        price: 1800,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images10.jpg',
                        title: 'How to Win at Travel',
                        author: 'Brian Kelly ',
                        price: 2000,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images11.jpg',
                        title: 'When the Moon Hatched',
                        author: 'Sarah A. Parker',
                        price: 1500,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images12.jpg',
                        title: 'North Is the Night',
                        author: 'Emily Rath',
                        price: 1800,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images13.jpg',
                        title: 'Open Socrates',
                        author: 'Agnes Callard',
                        price: 2000,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images14.jpg',
                        title: 'The Coming Wave',
                        author: 'Mustafa Suleyman',
                        price: 1500,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images15.jpg',
                        title: 'The AI Revolution: Transforming Manufacturing',
                        author: 'Dean H. Stanton',
                        price: 1800,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images16.jpg',
                        title: 'Machine Learning System Design Interview',
                        author: 'Ali Aminian',
                        price: 2000,
                      ),
                      Book(
                        coverImagePath: 'assets/images/images17.jpg',
                        title: 'Source Code: My Beginnings',
                        author: 'Bill Gates',
                        price: 1500,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
