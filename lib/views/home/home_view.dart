import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/views/home/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Home"),
    ),
    body: Text("hello"),
  );
  } // builder

  @override
  viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  bool get reactive => true;
} // HomeView