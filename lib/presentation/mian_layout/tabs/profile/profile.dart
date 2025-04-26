import 'package:evently_c14_online_sat/core/widgets/custom_drop_down_menu.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_profile_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedLang = "English";
  String selectedTheme = "Light";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomProfileHeader(
            userName: "Muahmmed Saad", email: "mSaad@gmail.com"),
        Padding(
          padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomDropDownMenu(
                title: AppLocalizations.of(context)!.language,
                textView: selectedLang,
                menuItems: ["English", "عربي"],
                onChange: _onLanguageChange,
              ),
              SizedBox(height: 16.h),
              CustomDropDownMenu(
                  title: AppLocalizations.of(context)!.theme,
                  textView: selectedTheme,
                  menuItems: [
                    AppLocalizations.of(context)!.light,
                    AppLocalizations.of(context)!.dark,
                  ],
                  onChange: _onThemeChange)
            ],
          ),
        )
      ],
    );
  }

  void _onThemeChange(String? newTheme) {
    setState(() {
      selectedTheme = newTheme!;
    });
  }

  void _onLanguageChange(String? newLang) {
    setState(() {
      selectedLang = newLang!;
    });
  }
}
