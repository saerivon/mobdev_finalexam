import 'package:final_exam/screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://xltusoxzyoexfjkbzvgy.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhsdHVzb3h6eW9leGZqa2J6dmd5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODcxMTYsImV4cCI6MjA4NjQ2MzExNn0.KIjVJolOYeEBZ5xaZ4H0je8A4HVCySMXwlgOvy5HNb0',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const ChatPage(username: 'User1'),
    );
  }
}
