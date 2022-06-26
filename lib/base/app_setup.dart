
import 'package:hackathon/services/api_response.dart';
import 'package:hackathon/views/city/city_view.dart';
import 'package:hackathon/views/home/home_view.dart';
import 'package:hackathon/views/landing/landing_view.dart';
import 'package:hackathon/views/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(

  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: HomeView,),
    MaterialRoute(page: LandingView,),
    MaterialRoute(page: CityView,),

  ],
  dependencies: [

    LazySingleton(classType: ApiResponseService),

    // we have to register NavigationService
    // get_it
    Singleton(classType: NavigationService),
  ]
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}