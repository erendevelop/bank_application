import 'package:flutter/material.dart';
import 'pages/homePage.dart';

void main() => runApp(BankApplication());

class BankApplication extends StatelessWidget {
  const BankApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
