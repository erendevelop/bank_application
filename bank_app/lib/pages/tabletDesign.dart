import '../generalElements/spendingsSection.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/leftNavigationBar.dart';
import '../generalElements/topBox.dart';
import '../generalElements/rightNavigationBar.dart';

class TabletDesign extends StatefulWidget {
  const TabletDesign({Key? key}) : super(key: key);

  @override
  State<TabletDesign> createState() => _TabletDesignState();
}

class _TabletDesignState extends State<TabletDesign> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        endDrawerEnableOpenDragGesture: true,
        drawerEdgeDragWidth: screenSize.width,
        drawer: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: SizedBox(
            width: 70,
            child: LeftNavigationBar(screenSize: screenSize),
          ),
        ),
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 5),
              child: Align(
                alignment: Alignment.topRight,
                child: Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    );
                  },
                ),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: screenSize.width / 1.6,
                    child: TopBoxComputer(moneyAmount: 300.15),
                  ),
                  SpendingsSection()
                ],
              ),
            ),
            SizedBox(
              child: RightNavigationBar(),
              width: screenSize.width / 3.5,
            ),
          ],
        ),
      ),
    );
  }
}
