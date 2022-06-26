import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/shared/assets/assets_path.dart';
import 'package:hackathon/shared/styles/styles.dart';
import 'package:hackathon/views/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends ViewModelBuilderWidget<SplashViewModel> {
  @override
  Widget builder(BuildContext context, SplashViewModel viewModel, Widget? child) {

    return Scaffold(

      backgroundColor: appWhiteColor,

      body: Padding(
        padding: const EdgeInsets.only(top: 300, bottom: 61),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(Assets.logo),
              ),

           Spacer(),
              Text("POWERED BY TECH IDARA" ,style: heading3,),

            ],
          ),
      ),

      );
  } // builder

  @override
  SplashViewModel viewModelBuilder(BuildContext context) => SplashViewModel();

  @override
  void onViewModelReady(SplashViewModel viewModel) {
    viewModel.init();
  } // onViewModelReady
} // SplashView