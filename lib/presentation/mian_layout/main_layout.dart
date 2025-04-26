import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/routes_manager/routes_manager.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/favourite/favourite.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/home/home.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/map/map.dart';
import 'package:evently_c14_online_sat/presentation/mian_layout/tabs/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      floatingActionButton: buildFab(),
      body: tabs[selectedIndex],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildFab() {
    return FloatingActionButton(
      onPressed: _goToCreateEventScreen,
      child: const Icon(Icons.add),
    );
  }

  void _goToCreateEventScreen() {
    Navigator.pushNamed(context, RoutesManager.createEvent);
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
                label: AppLocalizations.of(context)!.home),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedMapIcon),
                icon: SvgPicture.asset(SvgAssets.map),
                label: AppLocalizations.of(context)!.map),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedFavIcon),
                icon: SvgPicture.asset(SvgAssets.fav),
                label: AppLocalizations.of(context)!.favourite),
            BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(SvgAssets.selectedProfileIcon),
                icon: SvgPicture.asset(SvgAssets.profile),
                label: AppLocalizations.of(context)!.profile),
          ]),
    );
  }

  void _onTap(int newIndex) {
    setState(() {
      selectedIndex = newIndex;
    });
  }
}
