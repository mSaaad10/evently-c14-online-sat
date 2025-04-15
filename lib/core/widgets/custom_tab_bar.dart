import 'package:evently_c14_online_sat/core/widgets/custom_tab.dart';
import 'package:evently_c14_online_sat/data/DM/category_DM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key, required this.categories});

  final List<CategoryDM> categories;

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.categories.length,
      child: TabBar(
          labelPadding: REdgeInsets.symmetric(horizontal: 10),
          onTap: _onTabItemClicked,
          isScrollable: true,
          indicatorColor: Colors.transparent,
          tabAlignment: TabAlignment.start,
          tabs: widget.categories
              .map(
                (category) => CustomTab(
                  categoryDM: category,
                  isSelected:
                      widget.categories.indexOf(category) == selectedIndex,
                ),
              )
              .toList()),
    );
  }

  void _onTabItemClicked(int newTabIndex) {
    setState(() {
      selectedIndex = newTabIndex;
    });
  }
}
