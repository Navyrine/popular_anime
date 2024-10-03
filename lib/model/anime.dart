class Anime {
  const Anime({
    required this.id,
    required this.title,
    required this.score,
    required this.ranked,
    required this.popularity,
    required this.members,
    required this.release,
    required this.type,
    required this.studio,
    required this.sypnosis,
  });

  final String id;
  final String title;
  final double score;
  final int ranked;
  final int popularity;
  final double members;
  final String release;
  final String type;
  final String studio;
  final String sypnosis;
}