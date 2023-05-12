import 'package:assignment4/views/Contacts_View.dart';
import 'package:assignment4/views/Recents_View.dart';
import 'package:flutter/material.dart';

class GroupView extends StatefulWidget {
  const GroupView({super.key});

  @override
  State<GroupView> createState() => _GroupViewState();
}

class _GroupViewState extends State<GroupView> {
  int selectedindex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Groups"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 0),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green[200]),
                  child: const Text(
                    "Family         16 members",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.fromLTRB(15, 65, 15, 0),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[100]),
                  child: const Text(
                    "Friends          24 members",
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.fromLTRB(15, 90, 15, 0),
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 152, 207, 252)),
                  child: const Text(
                    "New Group",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                Text(
                  "   Favourites",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              ),
              title: Text(
                "MS Dhoni",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Office",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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"),
              ),
              title: Text(
                "Virat Kohli",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Group",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.pink,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(Icons.add_circle),
                    Text("Add Favourite")
                  ],
                )),
                Row(children: [
            IconButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RecentsView()));
            },
            icon:const Icon(Icons.contact_page_outlined),),
            SizedBox(width: 100),
            IconButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactsView()));
            },
            icon:const Icon(Icons.call),),
            SizedBox(width: 100),
            IconButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GroupView()));
            },
            icon:const Icon(Icons.group_outlined),)
          ],)],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "recents",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page_outlined), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.group_outlined), label: "Groups")
        ],
        currentIndex: selectedindex,
        onTap: onItemTapped,
      ),
    );
  }
}
