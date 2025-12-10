import '../models/user_model.dart';
import '../models/transaction_model.dart';
import '../models/reward_model.dart';

class MockService {
  // Current Crypto User
  static User currentUser = User(
    id: 'u101',
    name: 'Rohan Sharma',
    walletAddress: '0x71C7656EC7ab88b098defB751B7401B5f6d8976F', // Fake ETH address
    avatarUrl: 'assets/images/avatar_1.png',
    balance: 125.50, // RVC Balance
    rank: 42,
    city: 'Bhilai',
  );

  // Leaderboard
  static List<User> leaderboard = [
    User(id: 'u001', name: 'Piyush V.', walletAddress: '0x1A...', avatarUrl: '', balance: 3400.0, rank: 1, city: 'Raipur'),
    User(id: 'u002', name: 'Priyanshu A.', walletAddress: '0x2B...', avatarUrl: '', balance: 3150.75, rank: 2, city: 'Bhilai'),
    User(id: 'u003', name: 'Stiwart S.', walletAddress: '0x3C...', avatarUrl: '', balance: 2980.20, rank: 3, city: 'Durg'),
  ];

  // Blockchain Transactions
  static List<Transaction> recentTransactions = [
    Transaction(
      txHash: '0x3a1b2c...9988',
      type: TxType.mining,
      amount: 5.0,
      timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
      status: TxStatus.confirmed,
      description: 'Recycled Plastic (High Grade)',
    ),
    Transaction(
      txHash: '0x998877...1122',
      type: TxType.redeem,
      amount: -50.0,
      timestamp: DateTime.now().subtract(const Duration(days: 1)),
      status: TxStatus.confirmed,
      description: 'Redeemed PVR Cinema Voucher',
    ),
    Transaction(
      txHash: '0x776655...3344',
      type: TxType.mining,
      amount: 2.5,
      timestamp: DateTime.now().subtract(const Duration(minutes: 1)),
      status: TxStatus.pending, // Still mining
      description: 'Recycled Metal Cans',
    ),
  ];

  // Rewards list remains same
  static List<Reward> rewards = [
    Reward(id: 'r1', title: 'Raipur City Bus Pass', description: 'One day pass', cost: 50, imageUrl: 'assets/images/bus.png'),
    Reward(id: 'r2', title: 'PVR Cinema Voucher', description: '100rs off', cost: 200, imageUrl: 'assets/images/cinema.png'),
  ];
}