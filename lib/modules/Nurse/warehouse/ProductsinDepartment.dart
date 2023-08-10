import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ProductsinDepartmentNurse extends StatelessWidget {
  const ProductsinDepartmentNurse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: 4,
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
    final List<String> items = ['قطن','كحول','ورق','مسكن'];
 final List<String> items2 = ['55','22','30','33'];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: GestureDetector(
        onTap: () {


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
                Text("${items2[index]}",

                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13,color: Colors.black54,
                  ),

                ),
                Text('العدد'
                  ,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 13,color: Colors.black54,
                  ),

                ),
                Text("${items[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,fontFamily: 'Arial')),
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