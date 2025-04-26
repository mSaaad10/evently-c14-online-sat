import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sat/core/widgets/event_date_widget.dart';
import 'package:evently_c14_online_sat/core/widgets/event_title_widget.dart';
import 'package:evently_c14_online_sat/data/DM/eventDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomEvent extends StatelessWidget {
  const CustomEvent({super.key, required this.event});

  final EventDM event;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: REdgeInsets.all(16),
        width: double.infinity,
        height: 203.h,
        decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.blue, width: 1.w),
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(ImageAssets.birthday))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            EventDateWidget(
              date: event.date,
            ),
            const Spacer(),
            EventTitleWidget(
              title: event.title,
            ),
          ],
        ));
  }
}
