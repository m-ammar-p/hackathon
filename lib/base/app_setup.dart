import 'package:hackathon/views/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(

  routes: [
    MaterialRoute(page: HomeView, initial: true),
  ],
  dependencies: [

    //LazySingleton(classType: AuthService),

    // we have to register NavigationService
    // get_it
    Singleton(classType: NavigationService),
  ],
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}