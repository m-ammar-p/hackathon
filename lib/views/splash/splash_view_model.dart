import 'package:hackathon/base/app_setup.locator.dart';
import 'package:hackathon/base/app_setup.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';


class SplashViewModel extends BaseViewModel {

  void init() async {
    // this works like SetState() -> just call it
    // notifyListeners();
    await Future.delayed(Duration(seconds: 2),);

    locator<NavigationService>().pushNamedAndRemoveUntil(Routes.landingView);
  } // init
} // SplashViewModel