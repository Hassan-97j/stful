import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'counter',
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter'),
        backgroundColor: Colors.grey[500],
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
        setState(() {
          counter += 1;
        });
      },
      child: Icon(Icons.add),
      ),
      body: Container(
        // color: Colors.grey[300],
        child: Text(
          '$counter',
          style: TextStyle(
            fontSize: 42,
          ),
        ),
      ),
    );
  }
}
