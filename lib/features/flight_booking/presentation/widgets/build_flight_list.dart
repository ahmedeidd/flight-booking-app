import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_app/core/resources/app_colors.dart';
import 'package:flight_booking_app/features/flight_booking/domain/entities/flight_entity.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/build_flight_section.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/build_tag.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_text.dart';
import '../../../../core/utils/responsive.dart';

class BuildFlightList extends StatelessWidget {
  final List<Flight>? flights;
  const BuildFlightList({super.key, this.flights});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: flights!.length,
      itemBuilder: (context, index) {
        final flight = flights![index];
        return Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          margin: EdgeInsets.symmetric(vertical: Responsive.height(context, 1)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Responsive.height(context, 2),
                horizontal: Responsive.width(context, 3)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Onward
                BuildFlightSection(
                  title: flight.onwardTitle,
                  time: flight.onwardTime,
                  duration: flight.onwardDuration,
                  stops: flight.onwardStops,
                  price: flight.onwardPrice,
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                // Return
                BuildFlightSection(
                  title: flight.returnTitle,
                  time: flight.returnTime,
                  duration: flight.returnDuration,
                  stops: flight.returnStops,
                  price: flight.returnPrice,
                ),
                SizedBox(height: Responsive.height(context, 3)),
                //--------------
                Image.asset(
                  'assets/images/splitline.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),

                SizedBox(height: Responsive.height(context, 2)),
                // Pricing options and links
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          BuildTag(
                            text: "Cheapest",
                            color: AppColors.kPrimaryColor,
                          ),
                          SizedBox(width: Responsive.width(context, 2)),
                          BuildTag(
                            text: "Refundable",
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                    AutoSizeText(
                      "Flight Details",
                      style: AppTextTheme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.normal,
                        color: Colors.orange,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
