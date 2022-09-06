import 'package:flutter/material.dart';

class TopBoxComputer extends StatefulWidget {
  double moneyAmount;
  TopBoxComputer({required this.moneyAmount});

  @override
  State<TopBoxComputer> createState() => _TopBoxComputerState();
}

class _TopBoxComputerState extends State<TopBoxComputer> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        margin: EdgeInsets.only(bottom: 10),
        height: screenSize.height / 3 - 20,
        width: screenSize.width,
        // Şekli, rengi ve gölgeyi verdiğimiz decoration kısmı

        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  blurStyle: BlurStyle.outer,
                  color: Colors.white70)
            ],
            borderRadius: BorderRadius.circular(10)),
        // İçindeki elemanlar

        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Para ekleme butonu
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.green,
                  size: 35,
                ),
                onPressed: () {},
              ),
              // Yazan para miktarı

              SelectableText(
                "${widget.moneyAmount}\$",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              // Para gönderme butonu

              IconButton(
                icon: Icon(
                  Icons.add_circle_outlined,
                  color: Colors.red,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
