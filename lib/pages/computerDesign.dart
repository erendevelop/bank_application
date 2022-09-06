import 'package:flutter/material.dart';
import '../generalElements/rightNavigationBar.dart';
import '../generalElements/spendingsSection.dart';
import '../generalElements/topBox.dart';
import '../widgets/leftNavigationBar.dart';

final Color? mainColor = Colors.purple;

class ComputerDesign extends StatefulWidget {
  const ComputerDesign({Key? key}) : super(key: key);

  @override
  State<ComputerDesign> createState() => _ComputerDesignState();
}

class _ComputerDesignState extends State<ComputerDesign> {
  @override

  // Sağ menüdeki seçilmiş kutuları gösterme
  // Online alışveriş durumu
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Sol navigasyon çubuğu

              LeftNavigationBar(screenSize: screenSize),
              Flexible(
                child: Column(
                  children: [
                    // Üst kısımdaki Container

                    TopBoxComputer(
                      moneyAmount: 300.84,
                    ),

                    // "Harcamalarınız" yazısı

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Your spendings for this month:",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),

                    // Harcamaların gözüktüğü kısım
                    SpendingsSection()
                  ],
                ),
              ),

              // Sağ taraftaki menü
              RightNavigationBar(),
            ],
          ),
        ),
      ),
    );
  }
}
