import 'package:flutter/material.dart';
List<Map<String, dynamic>> cardDataList = [
  {
    'title': 'Card 1',
    'imageUrl': 'https://example.com/card1.jpg',
  },
  {
    'title': 'Card 2',
    'imageUrl': 'https://example.com/card2.jpg',
  },
  // Add more card data here
];

Widget buildCard(Map<String, dynamic> cardData) {
  String title = cardData['title'];
  String imageUrl = cardData['imageUrl'];

  return GestureDetector(
    onTap: () {
      // Handle tap event here
      print('Card tapped: $title');
    },
    child: Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildCardList() {
  List<Widget> cardWidgets = cardDataList.map((cardData) => buildCard(cardData)).toList();

  return Wrap(
    spacing: 8.0,
    runSpacing: 8.0,
    children: cardWidgets,
  );
}

// Usage:
Widget myWrap = buildCardList();
