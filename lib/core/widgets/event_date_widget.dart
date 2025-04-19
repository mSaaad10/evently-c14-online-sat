import 'package:evently_c14_online_sat/core/extensions/date_extention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateWidget extends StatelessWidget {
  EventDateWidget({super.key, required this.date});

  final DateTime date; // day month year hour min sec millSec microSec

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: REdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date.day.toString(),
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              date.getMonthFormDateTime,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(fontSize: 14.sp),
            ),
          ],
        ),
      ),
    );
  }
}
