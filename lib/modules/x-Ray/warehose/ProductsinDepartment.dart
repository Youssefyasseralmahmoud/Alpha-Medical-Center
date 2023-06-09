import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProductsinDepartment extends StatelessWidget {
  const ProductsinDepartment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext contex, int index) {
              return Products(
                index: index,
              );
            }));
  }
}

class Products extends StatelessWidget {
  final int index;

  const Products({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/addVisit');

        },
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '20 ',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13,color: Colors.black54,
                  ),

                ),
                Text(
                  'العدد',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13,color: Colors.black54,
                  ),

                ),
                Text('أدوية ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,fontFamily: 'Arial')),
                IconButton(
                  color: Color(0xffb3c6ff),
                  icon: Icon(
                    Icons.medical_information_outlined,
                    size: 30,
                  ),
                  onPressed: () {
                    //   itemDetailsController.add()

                  },
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}