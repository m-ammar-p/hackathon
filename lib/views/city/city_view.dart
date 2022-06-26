import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/models/global_class.dart';
import 'package:hackathon/shared/styles/styles.dart';
import 'package:hackathon/shared/widgets/app_text_field.dart';
import 'package:hackathon/views/city/city_view_model.dart';
import 'package:stacked/stacked.dart';

class CityView extends ViewModelBuilderWidget<CityViewModel> {
  @override
  Widget builder(BuildContext context, CityViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: appWhiteColor,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Arrow back
                  GestureDetector(
                      onTap: () => viewModel.navigateToLandinPage(),
                      child: Icon(Icons.arrow_back)),

                  // City Select Text
                  Text("Select City", style: heading2.copyWith(color: Colors.black),),

                  // Search City Box
                  AppTextField(placeholder: "Search City",
                    onChanged: (text) => viewModel.cityController.text = text,
                    onSubmitted: (text) {
                      viewModel.isCitySearch = true;
                      GlobalClass.isCitySearch = true;
                      GlobalClass.cityName = text;
                      viewModel.navigateToHomePage();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  } // builder

  @override
  CityViewModel viewModelBuilder(BuildContext context) => CityViewModel();
} // CityView
