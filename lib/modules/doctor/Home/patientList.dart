import 'package:flutter/material.dart';
import 'package:get/get.dart';


class patientList extends StatelessWidget {
  const patientList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: ListView.builder(
            itemCount: 8,

            itemBuilder: (BuildContext contex, int index) {
              return Listpatients(
                index: index,
              );
            }));
  }

}

class Listpatients extends StatelessWidget {
  final int index;

  const Listpatients({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/patientVisitRecord');

        },
        child: Container(
          clipBehavior: Clip.antiAlias,

           decoration: BoxDecoration(
             color: Color(0xfff8f9ff),
             border: Border.all(color:    Color(0xff9bb4fd),width: 2),

            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(7, 7, 7, 7),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  color:  Color(0xff9bb4fd),
                  icon: Icon(
                    Icons.delete,
                    size: 30,
                  ),
                  onPressed: () {
                    //   itemDetailsController.add()

                  },
                ),
                Text('راما سبعه',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,fontFamily: 'Arial')),
                IconButton(
                  color: Color(0xff9bb4fd),
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  ),
                  onPressed: () {

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
