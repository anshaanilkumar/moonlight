import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'cartt_viewmodel.dart';

class CarttView extends StackedView<CarttViewModel> {
  const CarttView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CarttViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CarttViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CarttViewModel();
}