import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_form_field.dart';
import 'package:evently_c14_online_sat/presentation/authentication/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
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
          SizedBox(
            height: 16.h,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextFormField(
                    labelText: "Email",
                    prefixIcon: Icons.email_sharp,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomTextFormField(
                      labelText: "Password",
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
                    title: "Forget Password?",
                    onPress: () {},
                  ),
                  CustomElevatedButton(title: "Sign-In", onPress: () {}),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don’t Have Account? ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      CustomTextButton(title: "Create Account", onPress: () {})
                    ],
                  ),
                  const CustomDivider(text: "Or"),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomButton(title: "Login With Google", onTap: () {}),
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
