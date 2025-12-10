class User {
  final String id;
  final String name;
  final String walletAddress;
  final String avatarUrl;
  final double balance;
  final int rank;
  final String city;

  User({
    required this.id,
    required this.name,
    required this.walletAddress,
    required this.avatarUrl,
    required this.balance,
    required this.rank,
    required this.city,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      walletAddress: json['walletAddress'],
      avatarUrl: json['avatarUrl'],
      balance: (json['balance'] as num).toDouble(), // Safe conversion
      rank: json['rank'],
      city: json['city'],
    );
  }
}