import 'package:flutter/material.dart';
import 'package:watchlist_v1/movie_card.dart';
import 'package:watchlist_v1/data.dart';


class WatchListApp extends StatelessWidget {
  const WatchListApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(
        title: "My Watchlist App",
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: const Wrap(
      //   spacing: 8.0, // horizontal spacing between cards
      //   runSpacing: 8.0, // vertical spacing between rows
      //   alignment: WrapAlignment.start, // alignment of cards within each row
      //   children: [
      //     MovieCard(),
      //     // Add more cards here
      //   ],
      // ),
      body: ListView.builder(itemCount: movieDetails.length ,itemBuilder: (context, index){
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
    }),
    );
  }
}
