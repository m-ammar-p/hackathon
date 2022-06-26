import 'package:flutter/material.dart';
import 'package:hackathon/shared/styles/styles.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool? isLoading;

  const AppButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isLoading,
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
          color: appGreyColor,
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
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    text,
                    style: heading6,
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
      ),
    );
  } // build
} // AppMainButton
