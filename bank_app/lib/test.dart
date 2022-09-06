import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  var switchValue = true;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            child: Text("press me"),
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      CupertinoSwitch(
                        value: switchValue,
                        onChanged: (value) => setState(() {
                          switchValue = value;
                          print(switchValue);
                        }),
                      ),
                    ],
                  );
                }),
          ),
        ),
      ),
    );
  }
}
