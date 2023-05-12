import 'package:assignment4/views/Contacts_View.dart';
import 'package:assignment4/views/Groups_View.dart';
import 'package:assignment4/views/Recents_View.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentindex = 0;
  final screens = [
    const RecentsView(),
    const ContactsView(),
    const GroupView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        onTap: (index) => setState(() => currentindex = index),
        items:const [
        BottomNavigationBarItem(
            icon: Icon(Icons.call_rounded), label: "Recents"),
        BottomNavigationBarItem(
            icon: Icon(Icons.contact_page_outlined), label: "Contacts"),
        BottomNavigationBarItem(
            icon: Icon(Icons.group_outlined), label: "Groups"),]
      ),
    );
  }
}