
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Payments_and_Receipts extends StatelessWidget {
  const Payments_and_Receipts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff9bb4fd),
          bottom: TabBar(
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 19),
            tabs: [
              Tab(text: 'المدفوعات'),
              Tab(text: 'المقبوضات'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Widget for Payments tab


            // Widget for Receipts tab
            Center(child: Text('Receipts')),
          ],
        ),
      ),
    );
  }


}

