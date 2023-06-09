// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
//
// class DoctorBooking extends StatelessWidget {
//   DoctorBooking();
//   final calendarController = Get.put(CalendarController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         toolbarHeight: 120,
//         elevation: 0,
//
//         backgroundColor: Colors.transparent,
//         // textDirection: TextDirection.rtl,
//
//         title: Padding(
//           padding: const EdgeInsets.only(left: 170, right: 0, top: 25, bottom: 0),
//           child: Text(
//             'جدول المواعيد ',
//             textAlign: TextAlign.right,
//             style: TextStyle(
//               fontSize: 28,
//               color: Colors.black54,
//             ),
//           ),
//         ),
//       ),
//       body: SfCalendar(
//         view: CalendarView.month,
//         cellBorderColor: Color(0xff2342a1),
//         todayHighlightColor: Color(0xff9bb4fd),
//         // todayTextStyle: TextStyle(color:Color(0xff9bb4fd)),
//         selectionDecoration: BoxDecoration(
//             border: Border.all(color: Color(0xffb3c6ff), width: 3)),
//         dataSource: calendarController.dataSource,
//                 appointmentTextStyle: TextStyle(fontSize: 30),
//
//         monthViewSettings: MonthViewSettings(
//           showAgenda: true,
//           agendaViewHeight: 300,
//           dayFormat: 'EEE',
//           numberOfWeeksInView: 4,
//           appointmentDisplayCount: 2,
//           appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
//           navigationDirection: MonthNavigationDirection.horizontal,
//         ),
//      ),
//     );
//   }
// }
//
// class Event {
//   final String eventName;
//   final DateTime from;
//   final DateTime to;
//
//   Event({required this.eventName, required this.from, required this.to});
// }
//
// class CalendarController extends GetxController {
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
//         return Appointment(
//             startTime: event.from,
//             endTime: event.to,
//             subject: event.eventName,
//             color: Color(0xff9bb4fd));
//       }).toList();
//
//   final dataSource = AppointmentDataSource(<Appointment>[]);
//
//   @override
//   void onInit() {
//     super.onInit();
//     dataSource.appointments = appointments;
//   }
// }
//
// class AppointmentDataSource extends CalendarDataSource {
//   AppointmentDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }