import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zibio/home_page.dart';

void main() {
  runApp(Zibio());
}


class Zibio extends StatelessWidget {
  const Zibio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
