import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class DiscoverTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container (
          padding: EdgeInsets.only(top: 50, bottom: 50),
          child: SfCalendar(
      view: CalendarView.schedule,
      dataSource: MeetingDataSource(_getDataSource()),
      monthViewSettings: MonthViewSettings(
          appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
    ),
        ));
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime startTime2 = DateTime(2022, 3, 5, 11, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    final DateTime endTime2 = startTime2.add(const Duration(hours: 2));

     final DateTime startTime3 = DateTime(2022, 3, 6, 11, 0, 0);
      final DateTime endTime3 = startTime3.add(const Duration(hours: 2));

    meetings.add(Meeting(
        'Learn Flutter', startTime, endTime, const Color(0xFF0F8644), false));
    meetings.add(Meeting(
        'Learn ABD', startTime2, endTime2, const Color(0xFF0F8644), false));
        meetings.add(Meeting(
        'Learn Math', startTime3, endTime3, const Color(0xFF0F8644), false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
