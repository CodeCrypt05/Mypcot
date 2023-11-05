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
  final int daysToShow = 7;
  final int currentDayIndex = 3;

  String _getDayText(int dayIndex) {
    final currentDate = DateTime.now();
    final firstDayOfWeek = currentDate
        .subtract(Duration(days: currentDate.weekday - DateTime.monday));
    final calculatedDate = firstDayOfWeek.add(Duration(days: dayIndex));

    final formatter = DateFormat('E');
    final dayLabel = formatter.format(calculatedDate);

    return '${calculatedDate.day}\n$dayLabel';
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: daysToShow,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final dayIndex = (currentDayIndex - (daysToShow ~/ 2) + index) % 7;
        final isToday = dayIndex == 6;

        final dayText = _getDayText(dayIndex);
        final day = dayText.split('\n')[0];
        final date = dayText.split('\n')[1];

        return Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 4),
                  child: Column(
                    children: [
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
                      Text(
                        day,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                isToday ? FontWeight.bold : FontWeight.w600,
                            color: isToday
                                ? HexColor('#008080')
                                : HexColor('#2C3D63'),
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
                    margin: EdgeInsets.only(left: 6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: HexColor('#008080'),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
