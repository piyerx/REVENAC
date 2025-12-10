import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/mock_service.dart';
import '../../widgets/wallet_card.dart';
import '../../widgets/primary_cta.dart';
import '../../widgets/stat_chip.dart';
import '../../widgets/mini_leaderboard.dart';
import '../../models/transaction_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. Fetch Data from Mock Service
    final user = MockService.currentUser;
    final recentTx = MockService.recentTransactions;
    final leaderboard = MockService.leaderboard;

    return Scaffold(
      // Top Bar
      appBar: AppBar(
        title: const Text("REVENAC"),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_rounded),
            onPressed: () {}, // TODO: Notifications
          ),
          const SizedBox(width: 8),
        ],
      ),

      // Bottom Nav: Placeholder for now
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.account_balance_wallet_outlined), label: 'Wallet'),
          NavigationDestination(icon: Icon(Icons.qr_code_2), label: 'Scan'), // Centered
          NavigationDestination(icon: Icon(Icons.leaderboard_outlined), label: 'Rank'),
          NavigationDestination(icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),

      // Main Content
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Hero Section: The Wallet
            WalletCard(user: user),
            const SizedBox(height: 24),

            // 2. Action Section: The Scan Button
            PrimaryCTA(
              label: "Scan QR to Mine RVC",
              onPressed: () {
                // We will hook this up to the Scanner Screen later
                print("Open Scanner");
              },
            ),
            const SizedBox(height: 24),

            // 3. Stats Row
            Row(
              children: const [
                StatChip(
                  icon: Icons.recycling,
                  value: "12",
                  label: "Items Today",
                ),
                SizedBox(width: 12),
                StatChip(
                  icon: Icons.bolt,
                  value: "5.2",
                  label: "RVC Mined",
                  iconColor: Colors.amber,
                ),
                SizedBox(width: 12),
                StatChip(
                  icon: Icons.emoji_events_outlined,
                  value: "#42",
                  label: "City Rank",
                  iconColor: AppTheme.accentBlue,
                ),
              ],
            ),
            const SizedBox(height: 32),

            // 4. Recent Activity Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Activity",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("View All"),
                ),
              ],
            ),
            // Simple List of recent items
            ...recentTx.take(3).map((tx) => _buildActivityTile(tx)),

            const SizedBox(height: 32),

            // 5. Social Proof: Leaderboard
            MiniLeaderboard(users: leaderboard),
            const SizedBox(height: 24), // Bottom padding
          ],
        ),
      ),
    );
  }

  // Helper widget for the list items
  Widget _buildActivityTile(Transaction tx) {
    final isMining = tx.type == TxType.mining;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          // Icon Box
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isMining ? Colors.green.shade50 : Colors.orange.shade50,
              shape: BoxShape.circle,
            ),
            child: Icon(
              isMining ? Icons.add_circle_outline : Icons.remove_circle_outline,
              color: isMining ? Colors.green : Colors.orange,
              size: 20,
            ),
          ),
          const SizedBox(width: 16),
          // Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tx.description ?? "Transaction",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "${tx.timestamp.hour}:${tx.timestamp.minute} • ${tx.status.name}",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
                ),
              ],
            ),
          ),
          // Amount
          Text(
            "${isMining ? '+' : ''}${tx.amount} RVC",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isMining ? AppTheme.primaryGreen : Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}