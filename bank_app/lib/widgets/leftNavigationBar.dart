import 'package:flutter/material.dart';
import '../widgets/leftBarButtonCreator.dart';

class LeftNavigationBar extends StatefulWidget {
  var screenSize;
  LeftNavigationBar({required this.screenSize});

  @override
  State<LeftNavigationBar> createState() => _LeftNavigationBarState();
}

class _LeftNavigationBarState extends State<LeftNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child:
          // Çubuğun yerini ayarlama
          Padding(
        padding: EdgeInsets.only(right: 10),
        child: Container(
          height: widget.screenSize.height,
          width: 75,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SideBarButtonCreator(
                    icon: Icons.accessibility_new_outlined,
                    description: "My Account"),
                SideBarButtonCreator(
                    icon: Icons.account_balance_wallet_outlined,
                    description: "Spendings"),
                SideBarButtonCreator(
                    icon: Icons.add_card_outlined, description: "Add Card"),
                SideBarButtonCreator(
                    icon: Icons.settings_rounded, description: "Settings"),
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              // Gölge ekleme
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    blurStyle: BlurStyle.outer,
                    color: Colors.white70)
              ],
              borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
