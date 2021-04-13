import 'package:examplefinanceui/customs/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "Personal Finance",
          style: TextStyle(fontSize: 16, fontFamily: "Montserrat"),
        ),
        actions: [
          IconButton(icon: Icon(Icons.person_outline), onPressed: () {})
        ],
      ),
      body: Column(
        children: [Header()],
      ),
    );
  }
}
