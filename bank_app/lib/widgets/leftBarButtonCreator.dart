import 'package:flutter/material.dart';

class SideBarButtonCreator extends StatefulWidget {
  IconData? icon;
  String description;
  SideBarButtonCreator({required this.icon, required this.description});

  @override
  State<SideBarButtonCreator> createState() => _SideBarButtonCreatorState();
}

class _SideBarButtonCreatorState extends State<SideBarButtonCreator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            widget.icon,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        Text(
          "${widget.description}",
          style: TextStyle(color: Colors.black, fontSize: 10),
        ),
      ],
    );
  }
}
