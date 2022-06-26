import 'package:hackathon/base/app_setup.locator.dart';
import 'package:hackathon/base/app_setup.router.dart';
import 'package:hackathon/models/api_key.dart';
import 'package:hackathon/models/global_class.dart';
import 'package:hackathon/services/api_response.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {

  final _apiresponse = locator<ApiResponseService>();

  double? get temp => _apiresponse.temparature;

  bool isLoading = false;

  void init() async {

    if(GlobalClass.isCitySearch){
      isLoading = true;
      runBusyFuture(_apiresponse.getResponseCity(apiKey: ApiKey.key, cityName: GlobalClass.cityName));
      isLoading = false;
      notifyListeners();
    }
    isLoading = true;
    runBusyFuture(_apiresponse.getResponse(apiKey: ApiKey.key));
    isLoading = false;
    notifyListeners();
  } // init


  void navigateToCityPage() {
    locator<NavigationService>().replaceWith(Routes.cityView);
  } // navigateToLandingPage

} // HomeViewModel