import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Item List'),
        ),
        body: myItemList(),
      ),
    );
  }
}

class myItemList extends StatelessWidget {
  // Sample data for the list
  final List<String> items = List.generate(20, (index) => ' ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(items[index]),
            subtitle: Text('This is item Number ${items[index]}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You Pressed Item Number ${items[index]}')),
              );
            },
          ),
        );
      },
    );
  }
}
