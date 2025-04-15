import 'package:evently_c14_online_sat/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sat/data/DM/category_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTab extends StatelessWidget {
  const CustomTab(
      {super.key, required this.categoryDM, required this.isSelected});

  final CategoryDM categoryDM;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(vertical: 10, horizontal: 16),
      decoration: BoxDecoration(
          color: isSelected ? ColorsManager.light : Colors.transparent,
          borderRadius: BorderRadius.circular(46.r),
          border: Border.all(width: 1.w, color: ColorsManager.white)),
      child: Row(
        children: [
          SvgPicture.asset(
            categoryDM.iconPath,
            colorFilter: ColorFilter.mode(
                isSelected ? ColorsManager.blue : ColorsManager.white,
                BlendMode.srcIn),
          ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            categoryDM.categoryName,
            style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: isSelected ? ColorsManager.blue : ColorsManager.white),
          ),
        ],
      ),
    );
  }
}
