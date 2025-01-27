import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_app/features/flight_booking/domain/entities/flight_entity.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_text.dart';
import '../widgets/build_flight_list.dart';

class FlightDetailsPage extends StatelessWidget {
  final List<Flight> flights;
  const FlightDetailsPage({super.key, required this.flights});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBG,
        title: AutoSizeText(
          'Flight Details',
          style: AppTextTheme.textTheme.titleLarge,
          minFontSize: 8,
          maxLines: 1,
        ),
      ),
      body: BuildFlightList(
        flights: flights,
      ),
    );
  }
}
