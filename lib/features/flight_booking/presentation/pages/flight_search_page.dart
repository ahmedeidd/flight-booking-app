import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_app/core/resources/app_colors.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/build_search_form.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/app_text.dart';

class FlightSearchPage extends StatelessWidget {
  const FlightSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBG,
        title: AutoSizeText(
          'Search Flights',
          style: AppTextTheme.textTheme.titleLarge,
          minFontSize: 8,
          maxLines: 1,
        ),
      ),
      body: BuildSearchForm(),
    );
  }
}
