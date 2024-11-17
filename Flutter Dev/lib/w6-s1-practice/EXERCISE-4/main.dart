import 'package:flutter/material.dart';
import 'package:w3_s3_practice/w6-s1-practice/EXERCISE-4/FavoriteCard.dart';
import 'package:w3_s3_practice/w6-s1-practice/EXERCISE-4/jokes.dart';

void main() {
  runApp(MaterialApp(
    home: JokeApp(),
  ));
}

class JokeApp extends StatefulWidget {
  @override
  _JokeAppState createState() => _JokeAppState();
}

class _JokeAppState extends State<JokeApp> {
  final Jokes jokes = Jokes();
  String? bestJokeTitle; // Keeps track of the "best joke"

  @override
  Widget build(BuildContext context) {
    final jokeEntries = jokes.fetchJokes.entries.toList(); // Fetch all jokes

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Favorite Jokes"),
      ),
      body: ListView.builder(
        itemCount: jokeEntries.length,
        itemBuilder: (context, index) {
          final joke = jokeEntries[index];
          return FavoriteCard(
            title: joke.key,
            description: joke.value,
            isFavorite: joke.key == bestJokeTitle,
            onBestJokeSelected: () {
              setState(() {
                bestJokeTitle = joke.key; // Update the best joke
              });
            },
          );
        },
      ),
    );
  }
}
