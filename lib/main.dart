import 'package:flutter/material.dart';
import 'package:ksp_nusantara_app/screen/materi_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MateriScreen(),
    );
  }
}
