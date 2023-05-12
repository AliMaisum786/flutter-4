import 'package:assignment4/utils/Contacts_Constant.dart';
import 'package:assignment4/views/Groups_View.dart';
import 'package:assignment4/views/Recents_View.dart';
import 'package:flutter/material.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  int selectedindex = 1;
  void onItemTapped(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  addNewContact(context) {
    setState(() {
      Navigator.pop(context);
      ContactsConstant.Contact.add({
        "name": name.text,
        "username": "Ali Maisum",
        "number": number.text,
      });
      name.clear();
    });
  }

  editContact(context, index) {
    setState(() {
      Navigator.pop(context);
      ContactsConstant.Contact[index] = {
        "name": name.text,
        "username": "Ali Maisum",
        "number": number.text
      };
      number.clear();
    });
  }

  deleteUser(i) {
    setState(() {
      ContactsConstant.Contact.removeAt(i);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacts"),
        actions: [
          Row(
            children: const [Icon(Icons.search), Icon(Icons.more_vert_sharp)],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: ContactsConstant.Contact.length,
          itemBuilder: (context, i) {
            return ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
                title: Text("${ContactsConstant.Contact[i]["name"]}"),
                subtitle: Text("${ContactsConstant.Contact[i]["number"]}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        name.text = ContactsConstant.Contact[i]["name"];
                        showDialog(
                            context: (context),
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("My contacts"),
                                content: Container(
                                  child: Column(
                                    children: [
                                      TextField(
                                        controller: name,
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Contact Name"),
                                      ),
                                      const SizedBox(height: 10),
                                      TextField(
                                        controller: number,
                                        obscureText: false,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Contact Number"),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      editContact(context, i);
                                    },
                                    child: const Text("OK"),
                                  )
                                ],
                              );
                            });
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    IconButton(
                      onPressed: () {
                        deleteUser(i);
                      },
                      icon: const Icon(Icons.delete),
                    )
                  ],
                ));
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Add New Contact"),
                    content: Container(
                      height: 150,
                      child: Column(
                        children: [
                          TextField(
                            controller: name,
                            obscureText: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Contact Name",
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            controller: number,
                            obscureText: false,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Contact Number",
                            ),
                          )
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          addNewContact(context);
                        },
                        child: const Text("OK"),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RecentsView()));
                            },
                            icon: const Icon(Icons.contact_page_outlined),
                          ),
                          SizedBox(width: 100),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactsView()));
                            },
                            icon: const Icon(Icons.call),
                          ),
                          SizedBox(width: 100),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GroupView()));
                            },
                            icon: const Icon(Icons.group_outlined),
                          )
                        ],
                      )
                    ],
                  );
              });
          },
          child: const Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "recents"),
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
