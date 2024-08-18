import 'package:flutter/material.dart';

class Chatscreen2 extends StatefulWidget {
  final String name;
  final String amount;

  const Chatscreen2({super.key, required this.name, required this.amount});

  @override
  State<Chatscreen2> createState() => _Chatscreen2State();
}

class _Chatscreen2State extends State<Chatscreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          _buildMessage(
            message: "I am food Deliver",
            isSent: false,
          ),
          _buildMessage(
            message: "I am Waiting For you",
            isSent: true,
          ),
          _buildMessage(
            message: "I am Come just Few Minute",
            isSent: true,
          ),
          _buildMessage(
            message: "Ok Thanks",
            isSent: false,
          ),
        ],
      ),
    );
  }

  Widget _buildMessage({required String message, required bool isSent}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment:
            isSent ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isSent) ...[
            CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text("N"),
              foregroundColor: Colors.white,
            ),
            SizedBox(width: 8),
          ],
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: isSent ? Color(0xFFE7FFDB) : Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              message,
              style: TextStyle(fontSize: 17),
            ),
          ),
          if (isSent) ...[
            SizedBox(width: 8),
            CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text("I"),
              foregroundColor: Colors.white,
            ),
          ],
        ],
      ),
    );
  }
}
