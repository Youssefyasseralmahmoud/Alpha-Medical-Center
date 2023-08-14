import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/manager/home/storage_in_managment/storage_in_managment_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';

class Storage_in_managment extends StatelessWidget {
  const Storage_in_managment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Storage_in_managment_controller controller =
    Get.put<Storage_in_managment_controller>(
        Storage_in_managment_controller());
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: StaticColor.primarycolor,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/images/stock.png",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // Tab(
              //   child: Container(
              //     height: 40,
              //     width: 40,
              //     child: Image.asset(
              //       "assets/images/import.png",
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
              // Tab(
              //   child: Container(
              //     height: 40,
              //     width: 40,
              //     child: Image.asset(
              //       "assets/images/export.png",
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
        GetBuilder<Storage_in_managment_controller>(builder: (controller){

          return
            controller.statusRequest==StatusRequest.loading?Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,),):
            Container(
            child: ListView(
                shrinkWrap: true,
                children: [
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "مواد المخزن",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "مركز ألفا الطبي",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.6,
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.data.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                              Container(color: Colors.white,child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0x4cffffff),
                                            ),
                                            child:Image.asset("assets/images/service_details.png")
                                        ),
                                        Text("تفاصيل المادة",style: TextStyle(fontSize: 16),),

                                      ],),
                                    Divider(),
                                    Text(" ${controller.data[index]['Quantity']} : الكمية   ",),
                                    Divider(),
                                    Text(" ${controller.data[index]['Lower_Limit']} : الحد الأدنى   ",),
                                    Divider(),
                                    Text(" ${controller.data[index]['UpperLimit']} : الحد الأعلى   ",),
                                    Divider(),
                                    Text(" ${controller.data[index]['ProductionDate']} : تاريخ الإنتاج   ",),
                                    Divider(),
                                    Text(" ${controller.data[index]['ExpiryDate']} : تاريخ الإنتهاء   ",),

                                  ],),
                              )));
                        },
                        child: Container(
                          padding: EdgeInsets.all(8),
                          margin: const EdgeInsets.only(top: 10),
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                            color: StaticColor.thirdgrey,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children:  [
                              Text(
                                "اسم المنتج :  ${controller.data[index]['Name']} ",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("تاريخ الإنتاج  : ${controller.data[index]['ProductionDate']}",style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ]),
          );
        })
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   child: ListView(
            //     children: [
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.end,
            //           children: const [
            //             Text(
            //               "الواردات ",
            //               style: TextStyle(
            //                   fontSize: 20, fontWeight: FontWeight.bold),
            //             ),
            //             Text(
            //               "مركز الفا الطبي",
            //               style: TextStyle(fontSize: 15, color: Colors.grey),
            //             ),
            //             Divider(
            //               height: 5,
            //               color: Colors.black45,
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //           ],
            //         ),
            //       ),
            //       Container(
            //           height: MediaQuery.of(context).size.height * 0.6,
            //           child:
            //           GetBuilder<Storage_in_manamgment_controller>(
            //               builder: (controller) {
            //                 return ListView.builder(
            //                     shrinkWrap: true,
            //                     itemCount: 4,
            //                     itemBuilder: (context, index) {
            //                       return controller.droped == false
            //                           ? Container(
            //                         padding:
            //                         const EdgeInsets.symmetric(horizontal: 10),
            //                         margin: const EdgeInsets.only(top: 10),
            //                         height:
            //                         MediaQuery.of(context).size.height *
            //                             0.1,
            //                         width: MediaQuery.of(context).size.width *
            //                             0.8,
            //                         decoration: BoxDecoration(
            //                             color: StaticColor.thirdgrey
            //                                 .withAlpha(30),
            //                             borderRadius:
            //                             BorderRadius.circular(20)),
            //                         child: Row(
            //                           mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                           children: [
            //                             Row(
            //                               mainAxisAlignment:
            //                               MainAxisAlignment.spaceBetween,
            //                               children: [
            //                                 GestureDetector(
            //                                     onTap: () {
            //                                       controller.ontapdropdown(
            //                                           controller.droped);
            //                                       print(controller.droped);
            //                                     },
            //                                     child: const Icon(
            //                                         Icons.arrow_drop_down)),
            //                               ],
            //                             ),
            //                             const Text(
            //                               "2023-7-5",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,color: StaticColor.primarycolor),
            //                             ),
            //                           ],
            //                         ),
            //                       )
            //                           : Container(
            //                         padding:
            //                         const EdgeInsets.symmetric(horizontal: 10),
            //                         margin: const EdgeInsets.only(top: 10),
            //                         height:
            //                         MediaQuery.of(context).size.height *
            //                             0.1,
            //                         width: MediaQuery.of(context).size.width *
            //                             0.8,
            //                         decoration: BoxDecoration(
            //                             color: StaticColor.thirdgrey
            //                                 .withAlpha(30),
            //                             borderRadius:
            //                             BorderRadius.circular(20)),
            //                         child: Column(
            //                           crossAxisAlignment:
            //                           CrossAxisAlignment.end,
            //                           children: [
            //                             Container(
            //                               child: Row(
            //                                 mainAxisAlignment:
            //                                 MainAxisAlignment
            //                                     .spaceBetween,
            //                                 children: [
            //                                   Row(
            //                                     mainAxisAlignment:
            //                                     MainAxisAlignment
            //                                         .spaceBetween,
            //                                     children: [
            //                                       GestureDetector(
            //                                           onTap: () {
            //                                             controller
            //                                                 .ontapdropdown(
            //                                                 controller
            //                                                     .droped);
            //                                             print(controller
            //                                                 .droped);
            //                                           },
            //                                           child: const Icon(Icons
            //                                               .arrow_drop_down)),
            //                                     ],
            //                                   ),
            //                                   const Text(
            //                                     "2023-7-5",
            //                                     style: TextStyle(
            //                                         fontWeight:
            //                                         FontWeight.bold,
            //                                         color: StaticColor
            //                                             .primarycolor),
            //                                   ),
            //                                 ],
            //                               ),
            //                             ),
            //                             SizedBox(height: 10,),
            //                             const Text(
            //                               " : المبلغ  ",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold),
            //                             ),
            //                           ],
            //                         ),
            //                       );
            //                     });
            //               })),
            //
            //     ],
            //   ),
            // ),
            // Container(
            //   height: MediaQuery.of(context).size.height,
            //   child: ListView(
            //     children: [
            //       const SizedBox(
            //         height: 20,
            //       ),
            //       Container(
            //         padding: const EdgeInsets.all(8),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.end,
            //           children: const [
            //             Text(
            //               "المدفوعات ",
            //               style: TextStyle(
            //                   fontSize: 20, fontWeight: FontWeight.bold),
            //             ),
            //             Text(
            //               "مركز الفا الطبي",
            //               style: TextStyle(fontSize: 15, color: Colors.grey),
            //             ),
            //             Divider(
            //               height: 5,
            //               color: Colors.black45,
            //             ),
            //             SizedBox(
            //               height: 10,
            //             ),
            //           ],
            //         ),
            //       ),
            //       Container(
            //           height: MediaQuery.of(context).size.height * 0.6,
            //           child:
            //           GetBuilder<Storage_in_manamgment_controller>(
            //               builder: (controller) {
            //                 return ListView.builder(
            //                     shrinkWrap: true,
            //                     itemCount: 4,
            //                     itemBuilder: (context, index) {
            //                       return controller.droped_two == false
            //                           ? Container(
            //                         padding:
            //                         const EdgeInsets.symmetric(horizontal: 10),
            //                         margin: const EdgeInsets.only(top: 10),
            //                         height:
            //                         MediaQuery.of(context).size.height *
            //                             0.1,
            //                         width: MediaQuery.of(context).size.width *
            //                             0.8,
            //                         decoration: BoxDecoration(
            //                             color: StaticColor.thirdgrey
            //                                 .withAlpha(30),
            //                             borderRadius:
            //                             BorderRadius.circular(20)),
            //                         child: Row(
            //                           mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                           children: [
            //                             Row(
            //                               mainAxisAlignment:
            //                               MainAxisAlignment.spaceBetween,
            //                               children: [
            //                                 GestureDetector(
            //                                     onTap: () {
            //                                       controller.ontapdropdown_two(
            //                                           controller.droped_two);
            //                                       print(controller.droped_two);
            //                                     },
            //                                     child: const Icon(
            //                                         Icons.arrow_drop_down)),
            //                               ],
            //                             ),
            //                             const Text(
            //                               "2023-7-5",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,color: StaticColor.primarycolor),
            //                             ),
            //                           ],
            //                         ),
            //                       )
            //                           : Container(
            //                         padding:
            //                         const EdgeInsets.symmetric(horizontal: 10),
            //                         margin: const EdgeInsets.only(top: 10),
            //                         height:
            //                         MediaQuery.of(context).size.height *
            //                             0.1,
            //                         width: MediaQuery.of(context).size.width *
            //                             0.8,
            //                         decoration: BoxDecoration(
            //                             color: StaticColor.thirdgrey
            //                                 .withAlpha(30),
            //                             borderRadius:
            //                             BorderRadius.circular(20)),
            //                         child: Column(
            //                           crossAxisAlignment:
            //                           CrossAxisAlignment.end,
            //                           children: [
            //                             Container(
            //                               child: Row(
            //                                 mainAxisAlignment:
            //                                 MainAxisAlignment
            //                                     .spaceBetween,
            //                                 children: [
            //                                   Row(
            //                                     mainAxisAlignment:
            //                                     MainAxisAlignment
            //                                         .spaceBetween,
            //                                     children: [
            //                                       GestureDetector(
            //                                           onTap: () {
            //                                             controller
            //                                                 .ontapdropdown_two(
            //                                                 controller
            //                                                     .droped_two);
            //                                           },
            //                                           child: const Icon(Icons
            //                                               .arrow_drop_down)),
            //                                     ],
            //                                   ),
            //                                   const Text(
            //                                     "2023-7-5",
            //                                     style: TextStyle(
            //                                         fontWeight:
            //                                         FontWeight.bold,
            //                                         color: StaticColor
            //                                             .primarycolor),
            //                                   ),
            //                                 ],
            //                               ),
            //                             ),
            //                             SizedBox(height: 10,),
            //                             const Text(
            //                               " : المبلغ  ",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold),
            //                             ),
            //                           ],
            //                         ),
            //                       );
            //                     });
            //               })),
            //
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
