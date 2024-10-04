import 'package:flutter/material.dart';
import 'package:popular_anime/model/anime.dart';

class AnimeItem extends StatelessWidget {
  const AnimeItem({super.key, required this.anime, required this.onSelectedAnime});

  final Anime anime;
  final void Function(Anime anime) onSelectedAnime;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        clipBehavior: Clip.hardEdge,
        elevation: 5,
        child: InkWell(
          onTap: () {onSelectedAnime(anime);},
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                anime.imageUrl,
                width: 70,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        anime.title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        anime.sypnosis,
                        style: const TextStyle(fontSize: 12),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
