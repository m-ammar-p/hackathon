import 'package:flutter/material.dart';
import 'package:hackathon/base/app_setup.locator.dart';
import 'package:hackathon/base/app_view.dart';

void main() async {

  // singleton Locator which was generated from stacked_generator
  // it locates services and create their instances
  await setupLocator();

  runApp( AppView());
} // main




