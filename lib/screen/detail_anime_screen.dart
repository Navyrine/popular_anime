import 'package:flutter/material.dart';
import 'package:popular_anime/model/anime.dart';

class DetailAnimeScreen extends StatelessWidget {
  const DetailAnimeScreen({super.key, required this.animeDetail});

  final Anime animeDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animeDetail.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  animeDetail.imageUrl,
                  width: 230,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Score",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        animeDetail.score.toStringAsFixed(2),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Ranked",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        animeDetail.ranked.toString(),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Popularity",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        animeDetail.popularity.toString(),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Members",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(animeDetail.members),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Release",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(animeDetail.release),
                      const SizedBox(height: 10),
                      const Text(
                        "Type",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(animeDetail.type),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Synosis",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(animeDetail.sypnosis),
              ),
            )
          ],
        ),
      ),
    );
  }
}
