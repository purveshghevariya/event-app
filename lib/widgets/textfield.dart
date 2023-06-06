import 'package:event/config/app_colors.dart';
import 'package:event/config/text_style.dart';
import 'package:flutter/material.dart';

Widget textview(
    {BuildContext? context,
    String? labelText,
    String? hintText,
    required TextEditingController? controller,
    bool autoFocus = false,
    bool isSuffixWidget = false,
    bool isPrefixWidget = false,
    Widget? suffix,
    Widget? prefix,
    TextInputType? textInputType,
    TextInputAction? textInputAction,
    Function(String value)? onCahnge,
    bool obscureText = false,
    Color? textColor,
    Color? cursorColor,
    Color? labelTextColor,
    Color? enableBordeColor,
    Color? hintTextColor,
    String? validationMessage,
    Color? lableTextColor}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(30),
      shadowColor: AppColors.blackColor,
      child: TextFormField(
        keyboardType: textInputType ?? TextInputType.url,
        textInputAction: textInputAction ?? TextInputAction.none,
        controller: controller,
        onChanged: onCahnge,
        obscureText: obscureText,
        style: AppTextStyle.regularTextStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: textColor ?? AppColors.blackColor),
        cursorColor: cursorColor ?? AppColors.blackColor,
        autofocus: autoFocus,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.whiteColor,
          suffixIcon: isSuffixWidget ? suffix : null,
          prefixIcon: isPrefixWidget ? prefix : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const  EdgeInsets.fromLTRB(10, 0, 0, 0),
          hintText: hintText,
          hintStyle: AppTextStyle.smallTextStyle.copyWith(
              fontSize: 14, color: hintTextColor ?? AppColors.blackColor),
          labelStyle: AppTextStyle.smallTextStyle.copyWith(
            color: labelTextColor ?? AppColors.blackColor,
          ),
          labelText: labelText,
        ),
      ),
    ),
  );
}
