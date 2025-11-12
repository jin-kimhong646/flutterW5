import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              HobbyCard(
                text: "Travelling",
                color: Colors.green,
                icon: Icon(Icons.travel_explore_outlined),
              ),
              HobbyCard(
                text:"Music", 
                icon:Icon( Icons.music_note),
                color: Colors.red,
                ),
              Container(
                margin: EdgeInsetsDirectional.symmetric(
                  horizontal: 0,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color:Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(30),
                child: Center(
                  child: Row(
                    children: [
                      Icon(Icons.skateboarding),
                      Padding(padding: EdgeInsets.only(right: 20)),
                      Text("Skatting ", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ),
              ),
              HobbyCard(
                text:"Book", 
                icon:Icon(Icons.book),
                color:Colors.deepPurple,
                ),
            ],
          ),
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final Color color;
  final String text;
  final Icon icon;

  const HobbyCard({
    super.key,
    this.color = Colors.blue,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(30),
      child: Center(
        child: Row(
          children: [
            icon,
            Padding(padding: EdgeInsets.only(right: 20)),
            Text(text, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}