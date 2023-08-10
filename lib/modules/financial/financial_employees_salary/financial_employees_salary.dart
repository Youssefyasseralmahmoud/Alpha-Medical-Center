import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/financial/financial_employees_salary/financial_employees_salary_controller.dart';



class financial_employees_salary extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor:Color(0xff9bb4fd) ,
          title: Padding(
            padding: const EdgeInsets.only(left: 170.0, top: 20,bottom: 10),
            child: Text('العاملين ضمن المركز',style: TextStyle(color: Colors.black54, fontWeight: FontWeight.w300,fontSize: 23)),
          ),
          bottom: TabBar(
            indicatorColor:Color(0xffffffff),
            tabs: [
              Tab(
                child: Text(
                  'الموظفين',
                  style: TextStyle(color: Colors.black54,fontSize: 17),
                ),
              ),
              Tab(
                child: Text(
                  'الممرضين',
                  style: TextStyle(color: Colors.black54,fontSize: 17),
                ),
              ),
              Tab(
                child: Text(
                  'الأطباء',
                  style: TextStyle(color: Colors.black54,fontSize: 17),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildEmployeeList(),
            _buildEmployeeList(),
            _buildEmployeeList(),
          ],
        ),
      ),
    );
  }



  Widget _buildEmployeeList() {
    return ListView.builder(
      itemCount: 14,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('راما سبعة'),
          subtitle: Text('الراتب :200000'),
          trailing: Row( // Wrap the IconButton widgets with a Row widget
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x67e0e0e1),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Color(0xff9bb4fd),
                    size: 25,
                  ),
                  onPressed: () {
                    _editSalaryDialog();
                  },
                ),
              ),

              Container(
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0x67e0e0e1),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.add_box_outlined,
                    color: Color(0xff9bb4fd),
                    size: 25,
                  ),
                  onPressed: () {
                    _increment_requrst_SalaryDialog();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }


  void _editSalaryDialog() {
    Get.defaultDialog(
      title: 'تعديل الراتب',
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30),
            child: TextFormField(

              decoration: InputDecoration(labelText: 'الراتب الجديد'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'رجاء ادخل الراتب الجديد ';
                }
                return null;
              },
              onSaved: (value) {
                final newSalary = double.tryParse(value!);
                if (newSalary != null) {
                  // employee.salary = newSalary;
                }
              },
            ),
          ),

        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
          ),
          child: Text('إلغاء'),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
          ),
          onPressed: () {
            // Implement salary increase request logic here
            // You can access the entered values using the employee instance
            Get.back();
          },
          child: Text('تعديل الراتب'),
        ),
      ],
    );
  }
  void _increment_requrst_SalaryDialog() {
    Get.defaultDialog(
      title: 'طلب زيادة',
      content: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30),
            child: TextFormField(

              decoration: InputDecoration(labelText: 'نسبة الزيادة'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'رجاء ادخل النسبة ';
                }
                return null;
              },
              onSaved: (value) {
                final newSalary = double.tryParse(value!);
                if (newSalary != null) {
                  // employee.salary = newSalary;
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'ملاحظة'),
              maxLines: 3,
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
          ),
          child: Text('إلغاء'),
        ),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff9bb4fd)),
          ),
          onPressed: () {
            // Implement salary increase request logic here
            // You can access the entered values using the employee instance
            Get.back();
          },
          child: Text('إرسال الطلب'),
        ),
      ],
    );
  }
}