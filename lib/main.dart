import 'package:assignment4/views/Contacts_View.dart';
import 'package:assignment4/views/Groups_View.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GroupView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
