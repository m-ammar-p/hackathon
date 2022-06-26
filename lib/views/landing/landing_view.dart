import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/shared/assets/assets_path.dart';
import 'package:hackathon/shared/widgets/app_button.dart';
import 'package:hackathon/views/landing/landing_view_model.dart';
import 'package:stacked/stacked.dart';

import '../../shared/styles/styles.dart';

class LandingView extends ViewModelBuilderWidget<LandingViewModel> {
  @override
  Widget builder(
      BuildContext context, LandingViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: appWhiteColor,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 68, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text
                  Text(
                    "Hello,",
                    style: heading2.copyWith(color: Colors.black),
                  ),
                  Text(
                    "Let's set you,",
                    style: heading2.copyWith(color: appGreyColor),
                  ),
                  Text(
                    "weather..",
                    style: heading2,
                  ),
                  SizedBox(
                    height: 1,
                  ),
                ],
              ),
            ),

            // Doted Image
            Image.asset(
              Assets.dotedLines,
              height: 250,
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 53),
              child: Column(
                children: [
                  AppButton(text: "Select Current Location", onTap: () => viewModel.navigateToCityPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  LandingViewModel viewModelBuilder(BuildContext context) => LandingViewModel();

  @override
  void onViewModelReady(LandingViewModel viewModel) {
    super.onViewModelReady(viewModel);
  } // onViewModelReady
} // LandingView
