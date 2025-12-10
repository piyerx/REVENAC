import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';

void main() {
  runApp(
    // Required for Riverpod...?
    const ProviderScope(
      child: RevenacApp(),
    ),
  );
}