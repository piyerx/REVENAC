import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../theme/app_theme.dart';

class MiniLeaderboard extends StatelessWidget {
  final List<User> users;

  const MiniLeaderboard({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Top Miners (Bhilai)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              TextButton(
                onPressed: () {}, // Navigate to full board
                child: const Text("View All"),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Horizontal list of avatars
          Row(
            children: users.take(4).map((user) {
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: AppTheme.primaryGreen.withOpacity(0.2),
                      // If avatarUrl is empty, show initial
                      backgroundImage: user.avatarUrl.isNotEmpty
                          ? AssetImage(user.avatarUrl) as ImageProvider
                          : null,
                      child: user.avatarUrl.isEmpty
                          ? Text(user.name[0], style: const TextStyle(color: AppTheme.primaryGreen))
                          : null,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "${user.balance.toInt()}", // integer display for cleanliness
                      style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}