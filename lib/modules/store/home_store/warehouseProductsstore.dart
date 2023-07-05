import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/store/home_store/warehouseControllerstor.dart';


class warehouseProducts extends StatelessWidget {
  warehouseControllerstor controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
                itemCount: controller.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                    childAspectRatio: 1.5,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {

                      Get.toNamed("/Details");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Color(0xffb3c6ff), width: 3),
                      ),
                      width: 20,
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.products[index].name,
                            style: TextStyle(
                              color: Color(0xff9bb4fd),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  (controller.products[index].quantity).toString(),
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  ' : الكمية المتوفر',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  );
                },
              );
  }
}
