import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 262,
      width: double.infinity,
      child: Card(
        // child: Expanded(
        child: TableCalendar(
            calendarStyle: CalendarStyle(
              markerDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              cellMargin: EdgeInsets.all(2), // Reduce cell margins
              markersAlignment:
                  Alignment.bottomCenter, // Adjust marker alignment
              weekendTextStyle: TextStyle(
                color: Colors.red,
              ),
            ),
            availableGestures: AvailableGestures.all,
            selectedDayPredicate: (day) {
              return isSameDay(today, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                today = selectedDay;
                today = focusedDay;
              });
            },
            // calendarStyle: CalendarStyle(
            //     selectedDecoration: BoxDecoration(
            //         shape: BoxShape.rectangle,
            //         color: Colors.deepPurple.shade300),
            //     todayDecoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(3),
            //         color: Colors.deepPurple)),

            headerStyle: HeaderStyle(
                headerPadding: EdgeInsets.all(0),
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: TextStyle(fontSize: 12)),
            rowHeight: 28,
            focusedDay: today,
            firstDay: DateTime.utc(2000, 1, 1),
            lastDay: DateTime.utc(2100, 12, 31)),
      ),

      //     child: TableCalendar(
      //       focusedDay: _focusedDay,
      //       firstDay: DateTime(2000, 1, 1),
      //       lastDay: DateTime(2100, 12, 31),
      //       calendarFormat: CalendarFormat.month,
      //       startingDayOfWeek: StartingDayOfWeek.monday,
      //       selectedDayPredicate: (day) {
      //         return isSameDay(_selectedDay, day);
      //       },
      //       onDaySelected: (selectedDay, focusedDay) {
      //         setState(() {
      //           _selectedDay = selectedDay;
      //           _focusedDay = focusedDay;
      //         });
      //       },
      //       calendarStyle: CalendarStyle(
      //         markerDecoration: BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: Colors.blue,
      //         ),
      //       ),
      //       headerStyle: HeaderStyle(
      //         formatButtonVisible: false,
      //       ),
      //     ),
      //   ),
      // ),
    );
    // Display events for the selected day
  }
}
