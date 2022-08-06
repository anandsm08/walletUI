// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walletapp/util/my_wallet.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                child: PageView(scrollDirection: Axis.horizontal,
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

            //column
          ],
        ),
      ),
    );
  }
}
