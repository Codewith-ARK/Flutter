import 'package:flutter/material.dart';
import 'package:watchlist_v1/data.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: movieDetails.length ,itemBuilder: (context, index){
      return Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network('$movieDetails["poster"]'),
            ),
            Text("$movieDetails['name']"),
          ],
        ),
      );
    });
  }
}
