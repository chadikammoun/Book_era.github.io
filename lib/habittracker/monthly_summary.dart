import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

import 'date_time.dart';

class MonthlySummary extends StatelessWidget {
  final Map<DateTime, int>? datasets;
  final String startDate;

  const MonthlySummary({
    super.key,
    required this.datasets,
    required this.startDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: HeatMap(
        startDate: createDateTimeObject(startDate),
        endDate: DateTime.now().add(Duration(days: 0)),
        datasets: datasets,
        colorMode: ColorMode.color,
        defaultColor: Colors.grey[200],
        textColor: Colors.white,
        showColorTip: false,
        showText: true,
        scrollable: true,
        size: 30,
        colorsets: const {
          1:  Color.fromARGB(255, 146, 128, 177),
                    2:  Color.fromARGB(255, 137, 113, 177),
                              3:  Color.fromARGB(255, 134, 105, 180),
                                        4:  Color.fromARGB(255, 126, 93, 179),
                                                  5:  Color.fromARGB(255, 123, 87, 181),
                                                            6:  Color.fromARGB(255, 115, 77, 176),
                                                                      7:  Color.fromARGB(255, 114, 72, 181),
                                                                                8:  Color.fromARGB(255, 111, 65, 185),
          9:  Color.fromARGB(255, 105, 56, 185),
                    10:  Color.fromARGB(255, 98, 42, 188),







        },
        onClick: (value) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(value.toString())));
        },
      ),
    );
  }
}