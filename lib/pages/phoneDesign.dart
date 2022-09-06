import 'package:bank_app/generalElements/spendingsSection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../generalElements/rightNavigationBar.dart';
import '../generalElements/topBox.dart';
import '../widgets/leftNavigationBar.dart';

double screenSizeMobile = 0;

class PhoneDesign extends StatefulWidget {
  const PhoneDesign({Key? key}) : super(key: key);

  @override
  State<PhoneDesign> createState() => _PhoneDesignState();
}

class _PhoneDesignState extends State<PhoneDesign> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    screenSizeMobile = screenSize.width;
    return SafeArea(
      child: Scaffold(
        drawer: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: SizedBox(
            width: 70,
            child: LeftNavigationBar(screenSize: screenSize),
          ),
        ),
        drawerEdgeDragWidth: screenSize.width,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello, Eren.'),
                  Align(
                    alignment: Alignment.topRight,
                    child: Builder(
                      builder: (context) {
                        return IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () => Scaffold.of(context).openEndDrawer(),
                          tooltip: MaterialLocalizations.of(context)
                              .openAppDrawerTooltip,
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TopBoxComputer(moneyAmount: 300.15),
              ),
              SpendingsSection(),
            ],
          ),
        ),
        endDrawer: Container(
          child: Drawer(
            backgroundColor: Colors.black87,
            child: Container(width: 180, child: RightNavigationBar()),
          ),
          width: screenSize.width / 2.3,
        ),
      ),
    );
  }
}
