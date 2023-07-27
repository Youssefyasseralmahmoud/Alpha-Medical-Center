import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/core/class/StatusRequest.dart';
import 'package:project_after_update/modules/reception/laboratory_in_reception/laboratory_service_type/laboratory_service_type_controller.dart';
import 'package:project_after_update/static_colors/StaticColors.dart';
class Laboratory_service_type extends StatelessWidget {
  const Laboratory_service_type({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Laboratory_service_type_controller controller=Get.put(Laboratory_service_type_controller());
    return Scaffold(
      bottomNavigationBar:   GestureDetector(
        onTap: (){
          Get.toNamed("/Laboratory_reserv");
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: StaticColor.primarycolor,
          ),
          child: const Text(
            "حجز",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),


      body: GetBuilder<Laboratory_service_type_controller>(builder: (controller){
        return
        controller.statusRequest==StatusRequest.loading?
            Center(child: CircularProgressIndicator(color: StaticColor.primarycolor,),):
          Container(
            child: ListView(children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 10),
                              prefixIcon: const Icon(Icons.search),
                              hintText: "البحث",
                              hintStyle: const TextStyle(fontSize: 20),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              fillColor: Colors.grey[200]),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: StaticColor.primarycolor,
                      ),
                      width: 60,
                      height: 55,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_active_outlined,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      "أنواع تحاليل المخبر",
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
                height: MediaQuery.of(context).size.height * 0.6,
                child: GridView.builder(
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  shrinkWrap: true,
                  itemCount: controller.data.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed("/Laboratory_service",arguments: {
                          "id_type" :controller.data[index]['id']
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            color: StaticColor.primarycolor,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 9,
                                child: Container(
                                  width: 200,
                                  child: Image.asset(
                                      "assets/images/blood-test.png",
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Text(
                                  "${controller.data[index]['Name']}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                              const Spacer(),
                            ],
                          )),
                    );
                  },
                ),
              ),
            ]),
          );
      })
    );
  }
}
