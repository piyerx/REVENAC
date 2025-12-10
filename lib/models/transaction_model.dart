enum ItemType { plastic, metal, glass }

class Transaction {
  final String id;
  final ItemType type;
  final int tokenAmount;
  final DateTime timestamp;
  final String status; // "Completed", "Pending"

  Transaction({
    required this.id,
    required this.type,
    required this.tokenAmount,
    required this.timestamp,
    required this.status,
  });

  // To get a string from the Enum
  String get typeName {
    return type.name[0].toUpperCase() + type.name.substring(1);
  }
}