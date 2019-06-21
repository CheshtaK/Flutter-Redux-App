import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text('0'),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("PRESSED"),
        child: Icon(Icons.add),
      ),
    );
  }
}
