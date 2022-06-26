import 'package:flutter/material.dart';
import 'package:hackathon/shared/styles/styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool? isLoading;
  Color? backgroundColor;
  Icon icon;
  TextStyle? style;

   AppButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isLoading,
     this.backgroundColor,
     required this.icon,
     this.style,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 17),
        padding: EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        height: 72,
        decoration: BoxDecoration(
          color: this.backgroundColor ?? appGreyColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: isLoading == true
            ? const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: FittedBox(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              )
            : Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: this.style ?? heading6,
                    ),
                      this.icon
                  ],
                ),
            ),
      ),
    );
  } // build
} // AppMainButton
