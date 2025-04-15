import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
      this.isSecure = false,
      this.onClick,
      this.keyboardType = TextInputType.text});

  final String labelText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final bool isSecure;
  final VoidCallback? onClick;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isSecure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: onClick, icon: Icon(suffixIcon))
            : null,
      ),
    );
  }
}
