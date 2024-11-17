import 'package:flutter/material.dart';

class FavoriteCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isFavorite;
  final VoidCallback onBestJokeSelected;

  const FavoriteCard({
    required this.title,
    required this.description,
    required this.isFavorite,
    required this.onBestJokeSelected,
    super.key,
  });

  Icon get icon {
    if (isFavorite) {
      return const Icon(
        Icons.favorite,
        color: Colors.red,
      );
    }
    return const Icon(Icons.favorite_border, color: Colors.grey);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.5, color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                  ),
                )
              ],
            ),
          ),
          IconButton(
            onPressed: onBestJokeSelected,
            icon: icon,
          )
        ],
      ),
    );
  }
}
