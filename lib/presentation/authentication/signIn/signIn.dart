import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_form_field.dart';
import 'package:evently_c14_online_sat/presentation/authentication/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset(ImageAssets.logo)),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    labelText: AppLocalizations.of(context)!.email,
                    prefixIcon: Icons.email_sharp,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: AppLocalizations.of(context)!.password,
                      prefixIcon: Icons.lock,
                      isSecure: secure,
                      suffixIcon:
                          secure ? Icons.visibility_off : Icons.visibility,
                      onClick: _onClick),
                  SizedBox(
                    height: 8.h,
                  ),
                  CustomTextButton(
                    alignment: Alignment.centerRight,
                    title: AppLocalizations.of(context)!.forget_password,
                    onPress: () {},
                  ),
                  CustomElevatedButton(
                      title: AppLocalizations.of(context)!.login,
                      onPress: () {}),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.dont_have_account,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      CustomTextButton(
                          title: AppLocalizations.of(context)!.create_account,
                          onPress: () {})
                    ],
                  ),
                  CustomDivider(
                    text: AppLocalizations.of(context)!.or,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomButton(
                      title: AppLocalizations.of(context)!.login_with_google,
                      onTap: () {}),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _onClick() {
    setState(() {
      secure = !secure;
    });
  }
}
