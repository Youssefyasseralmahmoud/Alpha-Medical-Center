// Model Classes
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_after_update/modules/financial/waiting_from_reception/InvoicePage.dart';
class Patient {
  String name;
  List<Service> services;

  Patient({required this.name, required this.services});
}

class Service {
  String name;
  double price;
  bool isPaid; // Add isPaid property

  Service({required this.name, required this.price, this.isPaid = false});
}


class Invoice {
  Patient patient;
  List<Service> services;
  double totalAmount;
  double amountPaid;

  Invoice({
    required this.patient,
    required this.services,
    required this.totalAmount,
    required this.amountPaid,
  });
}

// Financial Controller
class FinancialController extends GetxController {
  late String input;
  RxList<Patient> patients = <Patient>[
    Patient(
      name: 'محمد',
      services: [
        Service(name: 'تنظيف الأسنان', price: 50),
        Service(name: 'حشو الأسنان', price: 100),
      ],
    ),
    Patient(
      name: 'أحمد',
      services: [
        Service(name: 'تلبيس الأسنان', price: 200),
        Service(name: 'استئصال الضرس', price: 150),
      ],
    ),
  ].obs;

  void createInvoice(Patient patient, double amountPaid) {
    Get.to(() => InvoicePage());
  }

  double calculateTotalAmount(Patient patient) {
    double totalAmount = 0;
    for (var service in patient.services) {
      totalAmount += service.price;
    }
    return totalAmount;
  }
}