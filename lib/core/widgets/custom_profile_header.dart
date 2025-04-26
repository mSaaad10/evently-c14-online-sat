import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileHeader extends StatelessWidget {
  const CustomProfileHeader(
      {super.key, required this.userName, required this.email});

  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorsManager.blue,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(28.r))),
      child: Padding(
        padding: REdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(ImageAssets.profileImage),
            SizedBox(
              width: 16.w,
            ),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    userName,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(email, style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/// sat
/// mon
/// tue
