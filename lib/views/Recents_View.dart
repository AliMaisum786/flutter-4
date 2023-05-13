import 'package:flutter/material.dart';

class RecentsView extends StatefulWidget {
  const RecentsView({super.key});

  @override
  State<RecentsView> createState() => _RecentsViewState();
}

class _RecentsViewState extends State<RecentsView> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children:const [
            Text("All"),
            SizedBox(width: 30,),
            Text("Missed")
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBvDeQYR4Al7jeHHVEvTJ9XMm3EsVhafgrDw&usqp=CAU")),
              title: Text(
                "Jaguar Nick",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "2 min ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "+91 43456289512",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              subtitle: Text(
                "13 min ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call, color: Colors.red),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH2C1dGihGGbPTIWIeBvH2iO1AXTttroOIJA&usqp=CAU")),
              title: Text(
                "Vinay Varma",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "47 min ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Shankar",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "1 hour ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_made, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXr_S9vjBtWmDPOGS5NfAaXCmsof899CtjEw&usqp=CAU")),
              title: Text(
                "Surya",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "3 hour ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_made, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA5tX4yNgVkX4maSe5OdVWaifFLP-1UiyKNA&usqp=CAU")),
              title: Text(
                "Ahsan",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              subtitle: Text(
                "3 hour ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call, color: Colors.red),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5GoCwVkMN4IBSvYq0ppuGTSdq8UQZCba4aM0UxZfhcUTvp7x_MWQGi7HYrh_KasatgoA&usqp=CAU")),
              title: Text(
                "Ishan Kishan",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "7 hour ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5IYtZm6ms9xoIgglMYzRLazalClNrkCIlRQ&usqp=CAU")),
              title: Text(
                "+92 3151004134",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              subtitle: Text(
                "13 min ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call, color: Colors.red),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Dubey",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "19 min ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5GoCwVkMN4IBSvYq0ppuGTSdq8UQZCba4aM0UxZfhcUTvp7x_MWQGi7HYrh_KasatgoA&usqp=CAU")),
              title: Text(
                "Ali Maisum",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Yesterday",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_received),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5IYtZm6ms9xoIgglMYzRLazalClNrkCIlRQ&usqp=CAU")),
              title: Text(
                "Pervaiz",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Yesterday",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_made, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Anees Husaain",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "2 days ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_made, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Akber",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              subtitle: Text(
                "2 days ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call, color: Colors.red),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Ali Zaigum",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "3 days ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_made, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Ali Mehdi",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "3 days ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_made, color: Colors.green),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Ali Mudabbir",
                style: TextStyle(fontSize: 15, color: Colors.red),
              ),
              subtitle: Text(
                "4 days ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call, color: Colors.red),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROQSQJyd0WQC6NdkF8o3L0CfJzh6O0wIntXQ&usqp=CAU")),
              title: Text(
                "Ali Zain",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "5 days ago",
                style: TextStyle(fontSize: 12),
              ),
              trailing: Icon(Icons.call_received),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
    );
  }
}
