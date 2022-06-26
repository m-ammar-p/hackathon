import 'package:flutter/material.dart';
import 'package:hackathon/base/app_setup.locator.dart';
import 'package:hackathon/base/app_setup.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CityViewModel extends BaseViewModel {

  TextEditingController cityController = TextEditingController();

  bool isCitySearch = false;
  void navigateToLandinPage() {
    locator<NavigationService>().replaceWith(Routes.landingView);
  } // navigateToLandinPage

  void navigateToHomePage() {
    locator<NavigationService>().replaceWith(Routes.homeView);
  } // navigateToCityPage

} // CityViewModel