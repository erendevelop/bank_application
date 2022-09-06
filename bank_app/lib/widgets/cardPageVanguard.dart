import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../generalElements/cardPageGenerator.dart';

class CardPageVanguard extends StatefulWidget {
  String cardName;
  String cardNumber;
  CardPageVanguard({required this.cardName, required this.cardNumber});

  @override
  State<CardPageVanguard> createState() => _CardPageVanguardState();
}

class _CardPageVanguardState extends State<CardPageVanguard> {
  @override
  final String password = "password";
  var passwordController = TextEditingController();

  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(screenSize.width / 8),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Şifre alınan TextField'ı customize etmek için Container widget kullandım.

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(21),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        margin: EdgeInsets.all(0.5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 223, 219, 219)),
                            hintText: "Enter your password",
                          ),
                        ),
                      ),
                    ),
                    // Giriş işlemi için CupertinoButton kullandım.

                    CupertinoButton(
                      child: Text("Verify"),
                      onPressed: () {
                        if (passwordController.text == password)
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => CardPageGenerator(
                                  cardName: widget.cardName,
                                  cardNumber: widget.cardNumber,
                                ),
                              ));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
