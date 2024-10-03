import 'package:flutter/material.dart';
import 'package:popular_anime/model/anime.dart';
import 'package:popular_anime/widget/anime_item.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key, required this.anime});

  final List<Anime> anime;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: anime.length,
      itemBuilder: (ctx, index) => AnimeItem(
        anime: anime[index],
      ),
    );
  }
}
