# REVENAC

Current working project structure on and after commit node (hash: 20b6d56ec9a87d79800f28924c8acd4d17dfc7a6) 
```
lib/
├── main.dart                 // Entry point
├── app.dart                  // Root widget (MaterialApp)
├── theme/
│   └── app_theme.dart        // Theme configuration 
├── utils/
│   ├── app_assets.dart       // The specific class for image paths 
│   └── constants.dart        // Shared strings/constants
├── models/
│   ├── user_model.dart       // User data model
│   ├── transaction_model.dart
│   └── reward_model.dart
├── services/                 // Mock services 
│   ├── mock_service.dart
│   └── local_storage.dart    // For "Logout (clear local data)" logic
├── widgets/                  // Global components [cite: 3]
│   ├── wallet_card.dart      // [cite: 4]
│   ├── primary_cta.dart      // [cite: 4]
│   ├── stat_chip.dart        // [cite: 5]
│   └── mini_leaderboard.dart // [cite: 6]
└── screens/                  // Feature-based organization 
    ├── home/
    │   ├── home_screen.dart
    │   └── widgets/          // Local widgets for Home
    ├── scanner/
    │   └── scanner_screen.dart
    ├── wallet/
    │   ├── wallet_screen.dart
    │   └── widgets/
    ├── leaderboard/
    │   └── leaderboard_screen.dart
    ├── rewards/
    │   └── rewards_screen.dart
    └── profile/
        └── profile_screen.dart
```
