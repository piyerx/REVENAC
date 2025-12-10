class User {
  final String id;
  final String name;
  final String avatarUrl; // will use assets/ or network URLs
  final int totalTokens;
  final int rank;
  final String city; // for Leaderboard filtering

  User({
    required this.id,
    required this.name,
    required this.avatarUrl,
    required this.totalTokens,
    required this.rank,
    required this.city,
  });

  // To create a User from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      avatarUrl: json['avatarUrl'],
      totalTokens: json['totalTokens'],
      rank: json['rank'],
      city: json['city'],
    );
  }
}