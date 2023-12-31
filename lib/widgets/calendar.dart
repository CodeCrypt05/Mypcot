import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat week = CalendarFormat.week;

  final DateTime dateTime = DateTime.now();
  final DateFormat formatter = DateFormat('d');
  late String formatted = formatter.format(dateTime);
  late int currentDyIndex = int.parse(formatted);

  final int daysToShow = 7;

  // String _getDayText(int dayIndex) {
  //   final currentDate = DateTime.now();
  //   final firstDayOfWeek =
  //       currentDate.subtract(Duration(days: currentDate.weekday));
  //   final calculatedDate = firstDayOfWeek.add(Duration(days: dayIndex));

  //   final formatter = DateFormat('E');
  //   final dayLabel = formatter.format(calculatedDate);

  //   return '${calculatedDate.day}\n$dayLabel';
  // }

  String _getDayText(int dayIndex) {
    final currentDate = DateTime.now();
    final firstDayOfWeek =
        currentDate.subtract(Duration(days: currentDate.weekday - 1));
    final calculatedDate = firstDayOfWeek.add(Duration(days: dayIndex));

    final formatter = DateFormat('E');
    final dayLabel = formatter.format(calculatedDate);

    return '${calculatedDate.day}\n$dayLabel';
  }

  // String _getWeekText(dayIndex) {
  //   final currentDate = DateTime.now();
  //   final firstDayOfWeek =
  //       currentDate.subtract(Duration(days: currentDate.weekday - 1));
  //   final calculatedDate = firstDayOfWeek.add(Duration(days: dayIndex));

  //   final formatter = DateFormat('E');
  //   // final weekStart = formatter.format(firstDayOfWeek);
  //   final dayLabel = formatter.format(calculatedDate);

  //   // return '$weekStart - $weekEnd';
  //   return '${calculatedDate.day}\n$dayLabel';
  // }

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    return ListView.builder(
      itemCount: daysToShow,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        // final dayIndex = (currentDate.day + index) % 7;
        // final isToday = dayIndex == 0;

        final currentDateIndex = (currentDate.weekday + 6) % 7;
        print(currentDateIndex);

        final dayIndex = (currentDate.day + index - 2) % 7;
        final dayText = _getDayText(dayIndex);
        var day = dayText.split('\n')[0];
        final date = dayText.split('\n')[1];
        // print(date);
        // print(dayIndex);
        // print(currentDate.day);

        final isToday = dayIndex == currentDateIndex;

        // final dayText = _getWeekText(dayIndex);

        return Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 4),
                child: Column(
                  children: [
                    Text(
                      day,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              isToday ? FontWeight.bold : FontWeight.normal,
                          color: isToday
                              ? HexColor('#008080')
                              : HexColor('#C5D6FC'),
                        ),
                      ),
                    ),
                    Text(
                      date,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              isToday ? FontWeight.bold : FontWeight.normal,
                          color: isToday
                              ? HexColor('#008080')
                              : HexColor('#C5D6FC'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (isToday) // Add a dot above today's date
                Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.only(left: 6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#008080'),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
