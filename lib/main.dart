import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test1/pages/brain_page.dart';


void main() {
  runApp(const ProviderScope(child:MyApp()) );
   
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BrainPage(),
    );
  }
}
