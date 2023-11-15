import 'package:festa/core/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  String hintText;
  TextEditingController controller;
  double height;
  double width;
  bool isObscure;
  IconData prefixIcon;
  TextInputType keyboardType;
  bool readOnly;
  int minLines;
  int maxLines;
  VoidCallback onClickFunction;
  bool isLeadingPresent;
  IconData? suffixIcon;
  VoidCallback? suffixIconFunction;
  String? Function(String?)? validatorFunction;
  CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.height,
    required this.width,
    required this.isObscure,
    required this.validatorFunction,
    required this.prefixIcon,
    this.readOnly = false,
    this.keyboardType = TextInputType.name,
    this.minLines = 1,
    this.isLeadingPresent = true,
    this.maxLines = 1,
    required this.onClickFunction,
    this.suffixIcon,
    this.suffixIconFunction,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(),
      // height: 0.07 * screenHeight,
      width: width,
      child: Card(
        child: TextFormField(
            onTap: onClickFunction,
            readOnly: readOnly,
            obscureText: isObscure,
            controller: controller,
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: suffixIcon == null
                  ? const SizedBox()
                  : IconButton(
                      onPressed: suffixIconFunction,
                      icon: Icon(
                        suffixIcon,
                        // color: kGreyColor,
                        size: 22,
                      ),
                    ),
              filled: true,
              labelText: hintText,
              labelStyle: const TextStyle(
                // color: kBlackColor,
                fontSize: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  color: kGreyColor,
                  // width: 2.0,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                //  borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: kGreyColor,
                  // width: 2.0,
                ),
              ),
            ),
            validator: validatorFunction),
      ),
    );
  }
}
