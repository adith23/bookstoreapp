import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const Book({
    super.key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 210, 
      child: Card(
        margin: const EdgeInsets.only(left: 20),
        child: Padding(
          padding: const EdgeInsets.only(left: 18, top: 15, bottom: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 0),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color.fromARGB(255, 132, 105, 251),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                author,
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10), 
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(8), 
                child: Image.asset(
                  coverImagePath,
                  width: 140,
                  height: 200,
                  fit: BoxFit
                      .cover, 
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      'Rs. $price',
                      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                    ),
                    child: const Text('Add to cart'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
