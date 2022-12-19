import 'package:flutter/material.dart';
import 'package:putahe/utils.dart';
import 'package:putahe/login/login.dart';

void main() => runApp(const Putahe());

class Putahe extends StatelessWidget {
  const Putahe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Putahe: The Master of Kitchen',
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        body: SingleChildScrollView(
          child: Login(),
        ),
      ),
    );
  }
}
