import 'package:hackathon/base/app_setup.locator.dart';
import 'package:hackathon/base/app_setup.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LandingViewModel extends BaseViewModel {


  void navigateToHomePage() {
    locator<NavigationService>().replaceWith(Routes.homeView);
  } // navigateToHomePage

  void navigateToCityPage() {
    locator<NavigationService>().replaceWith(Routes.cityView);
  } // navigateToCityPage

} // LandingViewModel