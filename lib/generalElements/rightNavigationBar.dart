import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pie_chart/pie_chart.dart';

import '../widgets/cardPageVanguard.dart';

class RightNavigationBar extends StatefulWidget {
  const RightNavigationBar({Key? key}) : super(key: key);

  @override
  State<RightNavigationBar> createState() => _RightNavigationBarState();
}

class _RightNavigationBarState extends State<RightNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width / 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Sağ menüyü üretmek için olan döngü

          for (int index = 0; index < 2; index++)

            // Sağ menü içerikleri genel hattı
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: index == 0
                    // İlk sağ menü elemanı içeriği
                    ? PieChart(
                        legendOptions: LegendOptions(
                            legendPosition: LegendPosition.bottom),
                        chartRadius: 150,
                        dataMap: {"Card 1": 20, "Card 2": 50})
                    :

                    // Kaydedilmiş kartların listesi

                    Container(
                        height: 231,
                        child: Column(
                          children: [
                            // Kaydedilmiş kartlar yazısı

                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 30),
                              child: Text(
                                "Your saved cards",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),

                            // Kartların ikiden fazla olması durumunda kaydırılabilir olan kartlar kısmı

                            Flexible(
                              child: ListView(
                                children: [
                                  ListTile(
                                    onTap: () {
                                      // Kart bilgilerinin olduğu sayfaya geçme

                                      accessToCards(
                                          "Card 1", "5234 9237 9812 8363");
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    title: Row(children: [
                                      Icon(Icons.credit_card),
                                      Text(
                                        "Card 1",
                                        style: TextStyle(fontSize: 15),
                                      )
                                    ]),
                                    subtitle: Text("5*** **** **** **63"),
                                  ),
                                  ListTile(
                                    onTap: () {
                                      // Kart bilgilerinin olduğu sayfaya geçme

                                      accessToCards(
                                          "Card 2", "5712 8714 1248 8884");
                                    },
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    title: Row(
                                      children: [
                                        Icon(Icons.credit_card),
                                        Text(
                                          "Card 2",
                                          style: TextStyle(fontSize: 15),
                                        )
                                      ],
                                    ),
                                    subtitle: Text("5*** **** **** **84"),
                                  ),
                                ],
                              ),
                            ),

                            // İkinci kart
                          ],
                        ),
                      ),
              ),
            ),
        ],
      ),
    );
  }

  void accessToCards(cardName, cardNumber) {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: ((context) =>
              CardPageVanguard(cardName: cardName, cardNumber: cardNumber)),
        ));
  }
}
