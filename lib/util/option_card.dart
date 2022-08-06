// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'dart:ffi';

import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final optionicon;
  final optionname;
  final optioncolor;
  const OptionCard({
    Key? key,
    required this.optioncolor,
    required this.optionicon,
    required this.optionname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: optioncolor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 8,
              spreadRadius: 4,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 80,
              width: 80,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(70)),
              child: Center(
                child: Image.asset(optionicon),
              )),
          SizedBox(height: 5),
          Text(
            optionname,
            style: TextStyle(
                fontSize: 16,
                color: Colors.grey[350],
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
