import 'package:evently_c14_online_sat/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sat/core/resources/constant_manager.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_event.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_tab_bar.dart';
import 'package:evently_c14_online_sat/data/DM/eventDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: ColorsManager.blue,
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(16.r))),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 24, bottom: 16, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome Back ✨",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  "Muhammed Saad",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: ColorsManager.white,
                    ),
                    Text(
                      "Cairo, Egypt",
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTabBar(
                  categories: ConstantManager.categories,
                  selectedTabBg: ColorsManager.light,
                  unselectedTabBg: Colors.transparent,
                  selectedLabelColor: ColorsManager.blue,
                  unselectedLabelColor: ColorsManager.light,
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => CustomEvent(
              event: EventDM(
            category: "Meeting",
            title: "Meeting for Updating The Development Method",
            description: "Meeting for Updating The Development Method",
            date: DateTime.now(),
            time: TimeOfDay.now(),
          )),
          itemCount: 10,
        ))
      ],
    );
  }
}
