import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/favourite/favourite.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/home/home.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/map/map.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> tabs = const [
    Home(),
    Maps(),
    Favourite(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return BottomAppBar(
      notchMargin: 8,
      child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedHomeIcon),
                icon: SvgPicture.asset(SvgAssets.home),
                label: "Home"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedMapIcon),
                icon: SvgPicture.asset(SvgAssets.map),
                label: "Map"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedFavIcon),
                icon: SvgPicture.asset(SvgAssets.fav),
                label: "Favourite"),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedProfileIcon),
                icon: SvgPicture.asset(SvgAssets.profile),
                label: "Profile"),
          ]),
    );
  }

  void _onTap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
