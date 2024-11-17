import 'dart:math';

class Jokes {
  final Map<String, String> _jokes = {
    "Skeleton": "Why don’t skeletons fight each other? They don’t have the guts!",
    "Cheese": "What do you call cheese that isn’t yours? Nacho cheese!",
    "Bicycle": "Why couldn’t the bicycle stand up by itself? It was two tired!",
    "Wall": "What did one wall say to the other? I’ll meet you at the corner!",
    "Eggs": "Why don’t eggs tell jokes? They’d crack each other up!",
    "Elsa": "Why can’t you give Elsa a balloon? She’ll let it go!",
    "Scarecrow": "Why did the scarecrow win an award? Because he was outstanding in his field!",
    "Golfer": "Why did the golfer bring two pairs of pants? In case he got a hole in one!",
    "Math Book": "Why was the math book sad? It had too many problems!",
    "Oyster": "Why don’t oysters share their pearls? Because they’re shellfish!",
    "Bear": "What do you call a bear with no teeth? A gummy bear!",
    "Pony": "Why couldn’t the pony sing a lullaby? She was a little hoarse!",
    "Tomato": "Why did the tomato turn red? Because it saw the salad dressing!",
    "Computer": "Why did the computer go to the doctor? Because it caught a virus!",
    "Cookie": "Why did the cookie go to the hospital? Because it felt crumby!",
    "Spaghetti": "What do you call fake spaghetti? An impasta!",
    "Elevator": "Why are elevator jokes so good? They work on so many levels!",
    "Atoms": "Why don’t scientists trust atoms? Because they make up everything!",
    "Snowman": "What do you get when you cross a snowman and a vampire? Frostbite!",
    "Homework": "Why did the student eat his homework? Because the teacher said it was a piece of cake!"
  };

  
  Map<String, String> get fetchJokes => _jokes;

  // Fetch a random joke
  MapEntry<String, String> getRandomJoke() {
    final randomIndex = Random().nextInt(_jokes.length);
    return _jokes.entries.elementAt(randomIndex);
  }
}
