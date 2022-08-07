// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyWallet extends StatelessWidget {
  final double balance;
  final String accNumber;
  final color;
  const MyWallet({
    Key? key,
    required this.balance,
    required this.accNumber,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: 350,
        height: 270,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Balance',
            style: TextStyle(color: Colors.amberAccent[200], fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            '\$$balance',
            style: TextStyle(color: Colors.amberAccent[400], fontSize: 24),
          ),
          SizedBox(
            height: 15,
          ),
          //walletinfo
          Text(
            'A/C No:',
            style: TextStyle(color: Colors.amberAccent[200], fontSize: 14),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              accNumber.toString(),
              style: TextStyle(color: Colors.amber[400], fontSize: 22),
            ),
            Icon(
              Icons.info_outline,
              color: Colors.amber,
            )
          ]),
        ]),
      ),
    );
  }
}

/*
if(balance<2000){
  color:Colors.yellow
}elseif(balance<1000){
  color:Colors.red
}else{
  color:colors.green
}
*/

