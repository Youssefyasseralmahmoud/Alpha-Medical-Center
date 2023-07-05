import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../static_colors/StaticColors.dart';


class Details extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Color(0xff9bb4fd),
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 120, bottom: 20),
          child: Text(
            'تفاصيل المادة ',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column (
        children: [
          SizedBox(height: 25),
          Text(
            ' : اسم المادة',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 14,

            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 10),
          Container(
            width: 220,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  //   controller.updateQuantity(index, value);

                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
