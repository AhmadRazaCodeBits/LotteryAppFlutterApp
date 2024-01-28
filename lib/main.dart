import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const lotteryapp());
}

class lotteryapp extends StatefulWidget {
  const lotteryapp({super.key});

  @override
  State<lotteryapp> createState() => _lotteryappState();
}

class _lotteryappState extends State<lotteryapp> {
  Random random = Random();
  int x = 2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Lottery App")),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your current Number is $x "),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: x > 10
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Congratulation you win lotterty \n Your Number is $x ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.error),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Sorry Better Luck Next Time lotterty \n Your Number is $x ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )),
                        ],
                      ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {});
            x = random.nextInt(20);
            print(x);
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
