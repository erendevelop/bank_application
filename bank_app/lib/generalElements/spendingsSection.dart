import 'package:flutter/material.dart';
import '../pages/computerDesign.dart';

class SpendingsSection extends StatefulWidget {
  const SpendingsSection({Key? key}) : super(key: key);

  @override
  State<SpendingsSection> createState() => _SpendingsSectionState();
}

class _SpendingsSectionState extends State<SpendingsSection> {
  @override
  Widget build(BuildContext context) {
    List spendingsList = ['Games', 'Meals', 'Marketing'];
    List spendingIcons = [
      Icon(
        Icons.gamepad_rounded,
        color: Colors.blue,
      ),
      Icon(
        Icons.restaurant,
        color: Colors.brown,
      ),
      Icon(
        Icons.shopping_basket_outlined,
        color: Colors.green,
      )
    ];
    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: spendingIcons[index],
                title: Text(
                  '${spendingsList[index]}',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  'Card 1',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        itemCount: spendingsList.length,
      ),
    );
  }
}
