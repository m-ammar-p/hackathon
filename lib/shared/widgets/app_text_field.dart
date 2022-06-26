import 'package:flutter/material.dart';
import 'package:hackathon/shared/assets/assets_path.dart';
import 'package:hackathon/shared/styles/styles.dart';

class AppTextField extends StatelessWidget {

  final String placeholder;
  TextEditingController? controller;
  void Function(String value)? onChanged;
  final ValueChanged<String>? onSubmitted;

  AppTextField(
      {Key? key,
        required this.placeholder,
        this.controller,
        this.onChanged,
        this.onSubmitted,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: appGreyColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(1),
        boxShadow: [
          BoxShadow(
            color: appGreyColor.withOpacity(0.5),
            offset: const Offset(0, 10),
            blurRadius: 9,
          ),

          BoxShadow(
            color: appGreyColor.withOpacity(0.5),
            offset: const Offset(0, -10),
            blurRadius: 9,
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        style: paragraph2.copyWith(color: Colors.black),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: placeholder,
          hintStyle:  paragraph2.copyWith(color: Colors.black.withOpacity(0.5)),
        ),
      ),
    );
  } //build
} // AppTextField
