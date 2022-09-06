import 'package:flutter/material.dart';
import '../pages/tabletDesign.dart';
import 'computerDesign.dart';
import 'phoneDesign.dart';
import '../test.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool isComputer;
  late bool isTablet;
  late bool isPhone;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (screenSize.width < 600)
      return PhoneDesign();
    else if (599 < screenSize.width && screenSize.width < 1100)
      return TabletDesign();
    else
      return ComputerDesign();
    // return MyStatefulWidget();
  }
}
