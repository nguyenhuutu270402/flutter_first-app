import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomTableCalendar extends StatefulWidget {
  const CustomTableCalendar({super.key});

  @override
  State<CustomTableCalendar> createState() => _CustomTableCalendarState();
}

class _CustomTableCalendarState extends State<CustomTableCalendar> {
  DateTime dateTableCalendar = DateTime.now();
  DateTime _datePicker = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      dateTableCalendar = day;
    });
  }

  void _showMyDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
    ).then((value) => setState(() {
          if (value != null) {
            _datePicker = value;
          }
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Table Calendar"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return TableCalendarDialog();
                      },
                    );
                  },
                  child: Text("Show custom tabel calendar"),
                ),
                ElevatedButton(
                  onPressed: _showMyDatePicker,
                  child: Text("Show DatePicker"),
                ),
                TableCalendar(
                  locale: "en_US",
                  rowHeight: 50,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  firstDay: DateTime.utc(2010, 1, 1),
                  lastDay: DateTime.utc(2030, 12, 31),
                  focusedDay: dateTableCalendar,
                  onDaySelected: _onDaySelected,
                  selectedDayPredicate: (day) =>
                      isSameDay(day, dateTableCalendar),
                ),
                Text("DatePicker: ${_datePicker}"),
                Text("Table calendar: ${dateTableCalendar}"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TableCalendarDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Select a date"),
      content: TableCalendar(
        firstDay: DateTime.utc(2022, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        focusedDay: DateTime.now(),
      ),
      actions: <Widget>[
        FloatingActionButton(
          child: Text("OK"),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ],
    );
  }
}
