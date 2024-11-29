import 'package:flutter/material.dart';
import 'package:helloworld/widget/clone.dart';

void main() => runApp(Insta());

class Insta extends StatelessWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.pink),
      home: Clone(),
    );
  }
}
