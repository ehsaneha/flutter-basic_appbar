import 'package:flutter/material.dart';
import 'package:basic_appbar/basic_appbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExamplePage(),
    );
  }
  
}

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBarWidget(
        child: Row(
          children: <Widget>[

            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
              color: Colors.white,
            ),

            Expanded(
              child: Text('Title'),
            ),

            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.white,
            ),
            
          ],
        ),
      ),

      body: Center(
        child: Text('Body'),
      ),

    );
  }
}
