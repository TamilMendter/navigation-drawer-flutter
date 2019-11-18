import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final title = 'Navigation Drawer';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(child: Text('data')),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Navigation Drawer from Mendter'),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              trailing: Icon(Icons.ac_unit,),
              title: Text('menu 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('menu 2'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
