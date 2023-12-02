import 'package:flutter/material.dart';

class someList extends StatelessWidget {
  const someList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: const [
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
        ListTile(title: Text("hello")),
      ],
    );
  }
}
