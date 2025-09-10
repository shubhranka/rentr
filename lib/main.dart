// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  // Ensure that widget binding is initialized before doing any async work.
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables from the .env file.
  await dotenv.load(fileName: ".env");

  // Initialize the Supabase client.
  // The '!' asserts that we are sure these values are not null.
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // Wrap the entire app in a ProviderScope for Riverpod state management.
  runApp(
    const ProviderScope(
      child: RentRApp(),
    ),
  );
}

// A global accessor for the Supabase client for convenience.
final supabase = Supabase.instance.client;

class RentRApp extends StatelessWidget {
  const RentRApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentR',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RentR Project'),
        ),
        body: const Center(
          child: Text('Dependencies and Environment Configured!'),
        ),
      ),
    );
  }
}