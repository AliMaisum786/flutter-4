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
  int activeTab= 2
  ;
  Widget currentScreen = const GroupView(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: (){
                  setState(() {
                    activeTab=0;
                    currentScreen =const RecentsView();
                  },);
                },
                child: 
                Column(
                  children: [
                Icon(Icons.call_rounded,
                color: activeTab == 0 ? Colors.blue : Colors.black),
                const Text("Recents")
            ]),
                ),
                MaterialButton(
                minWidth: 60,
                onPressed: (){
                  setState(() {
                    activeTab=1;
                    currentScreen = const ContactsView();
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.contact_page_outlined,
                    color: activeTab == 1 ? Colors.blue : Colors.black),
                    const Text("Contacts")
                  ],
                ),),
                MaterialButton(
                minWidth: 60,
                onPressed: (){
                  setState(() {
                    activeTab=2;
                    currentScreen =const GroupView();
                  });
                },
                child: Column(
                  children: [
                    Icon(Icons.group_outlined,                
                    color: activeTab == 2 ? Colors.blue : Colors.black),
                    const Text("Groups")
                  ],
                ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
