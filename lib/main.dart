// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rentr/shared/theme/rentr_theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );
  runApp(
    const ProviderScope(
      child: RentRApp(),
    ),
  );
}

final supabase = Supabase.instance.client;

class RentRApp extends StatelessWidget {
  const RentRApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RentR',
      debugShowCheckedModeBanner: false, // Clean up the debug banner
      theme: RentrTheme.lightTheme, // Apply our custom theme
      home: const Scaffold(
        body: Center(
          child: Text("Theme setup complete. Ready for Auth UI."),
        ),
      ),
    );
  }
}