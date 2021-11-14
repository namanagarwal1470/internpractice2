import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
