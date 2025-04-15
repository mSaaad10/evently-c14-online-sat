import 'package:evently_c14_online_sat/core/resources/assets_manager.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_elevated_button.dart';
import 'package:evently_c14_online_sat/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool securePassword = true;
  bool secureRePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Column(
        children: [
          Expanded(child: Image.asset(ImageAssets.logo)),
          Expanded(
              flex: 4,
              child: Padding(
                padding: REdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const CustomTextFormField(
                        keyboardType: TextInputType.name,
                        labelText: "Name",
                        prefixIcon: Icons.person),
                    SizedBox(
                      height: 16.h,
                    ),
                    const CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        labelText: "Email",
                        prefixIcon: Icons.email_rounded),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: "Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: securePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isSecure: securePassword,
                      onClick: _onPasswordIconClick,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomTextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      labelText: "Re-Password",
                      prefixIcon: Icons.lock,
                      suffixIcon: secureRePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      isSecure: secureRePassword,
                      onClick: _onRePasswordIconClick,
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    CustomElevatedButton(title: "Sign-Up", onPress: () {})
                  ],
                ),
              ))
        ],
      ),
    );
  }

  void _onPasswordIconClick() {
    setState(() {
      securePassword = !securePassword;
    });
  }

  void _onRePasswordIconClick() {
    setState(() {
      secureRePassword = !secureRePassword;
    });
  }
}
