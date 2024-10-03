import 'package:flutter/material.dart';
import 'package:popular_anime/data/anime_data.dart';
import 'package:popular_anime/widget/anime_list.dart';

class AnimeScreen extends StatelessWidget {
  const AnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Anime Popular"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
            )
          ],
        ),
        body: const AnimeList(anime: dummyAnime));
  }
}
