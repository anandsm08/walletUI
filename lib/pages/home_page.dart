// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletapp/util/my_wallet.dart';
import 'package:walletapp/util/option_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _pagecontroller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Wallets',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
                  Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[500], shape: BoxShape.circle),
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(height: 15),

            //cards/wallet

            // ignore: sized_box_for_whitespace
            Container(
                height: 170,
                child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _pagecontroller,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      MyWallet(
                          balance: 1530.99,
                          accNumber: '1452 5419',
                          color: Colors.brown[400]),
                      MyWallet(
                          balance: 2030.25,
                          accNumber: '1994 2119',
                          color: Colors.deepPurpleAccent[400]),
                      MyWallet(
                          balance: 1005.29,
                          accNumber: '2419 3620',
                          color: Colors.purple[400])
                    ])),
            //varbuttons
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
              controller: _pagecontroller,
              count: 3,
              effect: SwapEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotHeight: 5,
                  dotWidth: 7),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OptionCard(
                        optioncolor: Colors.green[600],
                        optionicon:
                            'lib/walletappicons/icons8-cash-in-hand-48.png',
                        optionname: 'Pay'),
                    OptionCard(
                        optioncolor: Colors.red[600],
                        optionicon: 'lib/walletappicons/icons8-invoice-48.png',
                        optionname: 'Bills'),
                    OptionCard(
                        optioncolor: Colors.teal[600],
                        optionicon: 'lib/walletappicons/icons8-receive-64.png',
                        optionname: 'Receive'),
                  ]),
            )
            //column
          ],
        ),
      ),
    );
  }
}
