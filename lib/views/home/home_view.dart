import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/models/global_class.dart';
import 'package:hackathon/shared/assets/assets_path.dart';
import 'package:hackathon/shared/styles/styles.dart';
import 'package:hackathon/utils/helper.dart';
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Navigation Bar
              Padding(
                padding: const EdgeInsets.only(top:65, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () => viewModel.navigateToLandingPage(),
                        child: Icon(Icons.refresh, color: Colors.white,)),

                    Text(GlobalClass.cityName.toString(), style: heading7,),
                    SizedBox(width: 50),

                  ],
                ),
              ),

              // Degree Celsius
              SizedBox(height: 100,),
              viewModel.isLoading ?
              CircularProgressIndicator() :
              Text("${viewModel.temp.toString()}\u00B0", style: heading1,),

              // Clear Sky Text
              Text("Night, Clear Sky", style: paragraph2),

              Spacer(),
              // forecast time
              Container(
                height: 250,
                width: screenWidth(context),
                decoration: BoxDecoration(
                  color: appWhiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 44, left: 20, right: 20),
                  child: Column(
                    children: [
                      // Today row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Today", style: heading3,),
                          
                          Text("Sydney, Australia", style: paragraph3,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),


            ],
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