import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/phoneDesign.dart';
import '../pages/computerDesign.dart';
import 'package:pie_chart/pie_chart.dart';

class CardPageGenerator extends StatefulWidget {
  String cardName;
  String cardNumber;
  CardPageGenerator({required this.cardName, required this.cardNumber});

  @override
  State<CardPageGenerator> createState() => _CardPageGeneratorState();
}

class _CardPageGeneratorState extends State<CardPageGenerator> {
  @override
  var switchValue1 = true;
  var switchValue2 = true;
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Icon(
              Icons.credit_card_rounded,
              size: 30,
            ),
          ),
          title: ListTile(
            title: Text("${widget.cardName}",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            subtitle: Text("${widget.cardNumber}",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  // Online alışverişin açık olup olmadığını gösteren seçenek

                  trailing: CupertinoSwitch(
                      activeColor: screenSize.width == screenSizeMobile
                          ? Colors.blue
                          : mainColor,
                      value: switchValue1,
                      onChanged: (value) => setState(() {
                            switchValue1 = value;
                          })),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child:
                        Text("Online Shopping", style: TextStyle(fontSize: 17)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  // Temassız ödemenin açık olup olmadığını gösteren seçenek
                  trailing: CupertinoSwitch(
                      activeColor: screenSize.width == screenSizeMobile
                          ? Colors.blue
                          : mainColor,
                      value: switchValue2,
                      onChanged: (value) => setState(() {
                            switchValue2 = value;
                          })),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Contactless Payment",
                        style: TextStyle(fontSize: 17)),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Your spendings",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: PieChart(
                  chartType: ChartType.ring,
                  // Etiketleri değiştirmemizi sağlıyor

                  legendLabels: {"Technology": "abc"},
                  // Elemanların renklerini değiştirmemizi sağlıyor (sırayla)

                  colorList: [
                    Colors.black,
                    Colors.blue,
                    Colors.green,
                    Colors.red
                  ],
                  // Büyüklüğünü ayarlamamızı sağlıyor

                  chartRadius: screenSize.width == screenSizeMobile ? 170 : 250,
                  // Elemanlar ve kaplayacakları alan

                  dataMap: {
                    "Technology": 60,
                    "Games": 20,
                    "Meals": 60,
                    "E-Scooters": 30,
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
