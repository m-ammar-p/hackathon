import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/models/global_class.dart';
import 'package:hackathon/shared/assets/assets_path.dart';
import 'package:hackathon/shared/styles/styles.dart';
import 'package:hackathon/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Stack(
      children: <Widget>[
    Image.asset(Assets.backgroundImage,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.only(top:65, left: 20, right: 20),
            child: Column(
              children: [
                // Navigation Bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () => viewModel.navigateToCityPage(),
                        child: Icon(Icons.refresh, color: Colors.white,)),
                    Spacer(),
                    Text(GlobalClass.cityName.toString(), style: heading7,),
                    Spacer(),
                  ],
                ),

                // Degree Celsius
                SizedBox(height: 100,),
                Text(viewModel.temp.toString(), style: heading1,),
                viewModel.isLoading ?
                CircularProgressIndicator() :
                Text("Night, Clear Sky", style: paragraph2),

              ],
            ),
          ),
        ),
  ]
    );
  } // builder

  @override
  viewModelBuilder(BuildContext context) => HomeViewModel();


  @override
  void onViewModelReady(HomeViewModel viewModel) {
    viewModel.init();
  } // onViewModelReady

  @override
  bool get reactive => true;
} // HomeView