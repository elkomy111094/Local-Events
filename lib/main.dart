import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_event_ui/ui/home_page/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffffffff),
        primarySwatch: Colors.blue,
        primaryColor: Color(0xffff4700),
      ),
      home: HomePage(),
    );
  }
}
