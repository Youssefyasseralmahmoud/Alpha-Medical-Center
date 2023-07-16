import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/function/validinput.dart';

class maintenance extends StatelessWidget {
  const maintenance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        elevation: 0,
        backgroundColor: Color(0xff9bb4fd),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Spacer(),
            Expanded(
              child: Text(
                'طلب صيانة',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 23),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: TextFormField(
              validator: (val){
                return validinput(val!, 0,0,"");
              },
              keyboardType: TextInputType.number,
              onChanged: (value) {

              },
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label:  const Text(
                    " القسم ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9bb4fd),
                        fontWeight: FontWeight.bold),
                  ),
                  suffixIcon: const Icon(Icons.account_balance_wallet_outlined),
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28),
            child: TextFormField(
              validator: (val){
                return validinput(val!, 0,0,"");
              },
              keyboardType: TextInputType.number,
              onChanged: (value) {

              },
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label:  const Text(
                    " العطل  ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9bb4fd),
                        fontWeight: FontWeight.bold),
                  ),
                  suffixIcon: const Icon(Icons.error_outline),
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,top: 28,bottom: 50),
            child: TextFormField(
              validator: (val){
                return validinput(val!, 0,0,"");
              },
              keyboardType: TextInputType.number,
              onChanged: (value) {

              },
              decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label:  const Text(
                    " التكلفة  ",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff9bb4fd),
                        fontWeight: FontWeight.bold),
                  ),
                  suffixIcon: const Icon(Icons.monetization_on_outlined),
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),


          GestureDetector(
            onTap: () {  Get.toNamed('/financial_home'); },
            child: Container(
              width: 300,
              height: 50,

              margin: EdgeInsets.only(left: 20,right: 20, bottom: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff9bb4fd), width: 3),
                color: Color(0xfff3f3fc),
                borderRadius: BorderRadius.circular(25),
              ),

              child: Center(
                  child: Text(
                    'إرسال الطلب',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w100,
                      color: Colors.black38,
                    ),
                  )),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
