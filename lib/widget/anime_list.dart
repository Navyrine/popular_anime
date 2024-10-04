import 'package:flutter/material.dart';
import 'package:popular_anime/model/anime.dart';
import 'package:popular_anime/screen/detail_anime_screen.dart';
import 'package:popular_anime/widget/anime_item.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({super.key, required this.anime});

  final List<Anime> anime;

  void selectedDetailAnime(BuildContext context, Anime anime) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetailAnimeScreen(animeDetail: anime),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: anime.length,
      itemBuilder: (ctx, index) => AnimeItem(
        anime: anime[index],
        onSelectedAnime: (onSelect) {
          selectedDetailAnime(context, onSelect);
        },
      ),
    );
  }
}
