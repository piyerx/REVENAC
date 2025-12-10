class Reward {
  final String id;
  final String title;
  final String description;
  final int cost;
  final String imageUrl;
  final bool isAvailable;

  Reward({
    required this.id,
    required this.title,
    required this.description,
    required this.cost,
    required this.imageUrl,
    this.isAvailable = true,
  });
}