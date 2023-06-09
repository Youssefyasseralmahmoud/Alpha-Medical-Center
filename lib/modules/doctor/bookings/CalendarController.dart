// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:project_after_update/Modules/doctor/bookings/AppointmentDataSource.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
//
// import 'Event.dart';
//
// class CalendarController extends GetxController {
//   CalendarController();
//   final events = <Event>[
//     Event(
//       eventName: 'راما سبعة',
//       from: DateTime(2023, 5, 3, 2, 30, 0, 0, 0),
//       to: DateTime(2000, 1, 23, 3, 0, 0, 0, 0),
//     ),
//     Event(
//       eventName: 'رامي سبعة',
//       from: DateTime(2023, 5, 8, 2, 30, 0, 0, 0),
//       to: DateTime(2023, 5, 8, 2, 30, 0, 0, 0),
//     ),
//     Event(
//       eventName: 'سامي سامر',
//       from: DateTime(2023, 5, 20, 2, 30, 0, 0, 0),
//       to: DateTime(2023, 5, 20, 2, 30, 0, 0, 0),
//     ),
//   ];
//
//   List<Appointment> get appointments => events.map((event) {
//     return Appointment(
//         startTime: event.from,
//         endTime: event.to,
//         subject: event.eventName,
//         color: Color(0xff9bb4fd));
//   }).toList();
//
//   final dataSource = AppointmentDataSource(<Appointment>[]);
//
//   @override
//   void onInit() {
//     super.onInit();
//     dataSource.appointments = appointments;
//   }
// }
