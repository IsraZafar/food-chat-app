import 'package:flutter/material.dart';
import 'package:foodappchat/chatscreen2.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat Screen",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          List<String> names = ["Nexlent", "Hawkins", "Lelia Alexander"];
          List<String> amounts = ["18.00", "16.12", "12.01"];

          return ListTile(
            leading: CircleAvatar(
              radius: 25,
            ),
            title: Text(
              names[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("Your order just arrived!"),
            trailing: Text(amounts[index]),
            onTap: () {
              if (names[index] == "Nexlent") {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chatscreen2(
                      name: names[index],
                      amount: amounts[index],
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
