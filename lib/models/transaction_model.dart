enum TxType {
  mining,   // Earned from recycling (Mining RVC)
  transfer, // Sent to friend
  redeem    // Spent on rewards
}

enum TxStatus { pending, confirmed, failed }

class Transaction {
  final String txHash;        // Unique Blockchain Hash (0x...)
  final TxType type;
  final double amount;        // e.g., +5.0 RVC or -12.5 RVC
  final DateTime timestamp;
  final TxStatus status;      // Blockchain status
  final String? description;  // Optional

  Transaction({
    required this.txHash,
    required this.type,
    required this.amount,
    required this.timestamp,
    required this.status,
    this.description,
  });

  // Helper to format address for UI (e.g., "0x12...AB")
  static String truncateHash(String hash) {
    if (hash.length < 10) return hash;
    return '${hash.substring(0, 6)}...${hash.substring(hash.length - 4)}';
  }
}