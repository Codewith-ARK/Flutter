import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart'; // Importing the url_launcher_string.dart file
import 'src/data.dart'; // Importing the data.dart file

void main() => runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.teal), // Setting the theme color
  title: "My News Application",
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    appBar: AppBar(
      title: const Text(
        "My News App",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
    body: ListView(
      children: articles.map((article) => _buildItem(article)).toList(), // Mapping each article to a list of _buildItem widgets
    ),
  ),
));

// Function to build an ExpansionTile widget for each article
Widget _buildItem(Map<String, dynamic> e) {
  return ExpansionTile(
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        e['title'],
        style: const TextStyle(fontSize: 22),
      ),
    ),
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("${e['commentCount']} comments"),
          IconButton(
            icon: Icon(Icons.open_in_new, color: Colors.teal[800]),
            onPressed: () {
              _launchURL("http://${e['domain']}"); // Launching the URL associated with the article's domain
            },
          ),
        ],
      ),
    ],
  );
}

// Function to launch a URL in the default browser
void _launchURL(String urlString) async {
  Uri url = Uri.parse(urlString); // Parsing the URL string into a Uri object
  if (await canLaunchUrlString(url.toString())) { // Checking if the URL can be launched
    await launchUrlString(url.toString()); // Launching the URL in the default browser
  } else {
    throw 'Could not launch $urlString'; // Throwing an exception if the URL cannot be launched
  }
}
