import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/resources/colors_manager.dart';
import 'package:evently_c14_online_sat/core/resources/constant_manager.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_tab_bar.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateEventScreen extends StatelessWidget {
  const CreateEventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Event"),
      ),
      body: Padding(
        padding: REdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(ImageAssets.meeting)),
              CustomTabBar(
                categories: ConstantManager.categoriesWithoutAll,
                selectedTabBg: ColorsManager.blue,
                unselectedTabBg: Colors.transparent,
                selectedLabelColor: ColorsManager.light,
                unselectedLabelColor: ColorsManager.blue,
                verticalPadding: 16,
              ),
              Text(
                "Title",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              const CustomTextFormField(
                  keyboardType: TextInputType.text,
                  labelText: "Event Title",
                  prefixIcon: Icons.edit_note_outlined),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Description",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 8.h,
              ),
              const CustomTextFormField(
                keyboardType: TextInputType.text,
                maxLines: 3,
                labelText: "Event Description",
              ),
              Row(
                children: [
                  const Icon(Icons.date_range),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                      child: Text(
                    "Event Date",
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                  CustomTextButton(title: "Choose Date", onPress: () {})
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_rounded),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                      child: Text(
                    "Event Time",
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
                  CustomTextButton(title: "Choose Time", onPress: () {}),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              CustomElevatedButton(title: "Add Event", onPress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
