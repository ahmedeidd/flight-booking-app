import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_app/core/resources/app_text.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/pages/flight_details_page.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/provider/flight_provider.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/build_search_field.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/build_section_title.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/build_trip_type_button.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/flight_and_hotel_packages.dart';
import 'package:flight_booking_app/features/flight_booking/presentation/widgets/travel_inspirations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/custom_textField.dart';
import '../../../../core/utils/responsive.dart';

class BuildSearchForm extends StatelessWidget {
  BuildSearchForm({super.key});

  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // image , text and Round Trip, One Way, Multi-City
          Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/header_image.png',
                        width: double.infinity,
                        height: Responsive.height(context, 23),
                        fit: BoxFit.fill,
                      ),

                      // text
                      Positioned(
                        left: Responsive.width(context, 5),
                        top: Responsive.height(context, 3),
                        child: AutoSizeText(
                          "Let's start your trip",
                          style: AppTextTheme.textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Responsive.height(context, 4)),
                ],
              ),
              // Round Trip, One Way, Multi-City
              Positioned(
                left: Responsive.width(context, 5),
                bottom: Responsive.height(context, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuildTripTypeButton(
                      context: context,
                      label: "Round Trip",
                      isSelected: false,
                    ),
                    BuildTripTypeButton(
                      context: context,
                      label: "One Way",
                      isSelected: true,
                    ),
                    BuildTripTypeButton(
                      context: context,
                      label: "Multi-city",
                      isSelected: false,
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: Responsive.height(context, 1)),
          // from and to
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Responsive.width(context, 5)),
            child: Card(
              child: Column(
                children: [
                  BuildSearchField(
                    context: context,
                    icon: Icons.flight_takeoff,
                    hintText: "From",
                    controller: fromController,
                  ),
                  // green line
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Responsive.width(context, 10)),
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            child: Image.asset(
                              'assets/images/lineimage.png',
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: AppColors.bgcolor,
                          radius: Responsive.height(context, 1.2),
                          backgroundImage: AssetImage(
                            "assets/icons/icon.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                  BuildSearchField(
                    context: context,
                    icon: Icons.place,
                    hintText: "To",
                    controller: toController,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: Responsive.height(context, 1)),
          // Departure and Return
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Responsive.width(context, 5)),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    labelText: 'Departure',
                    suffixIcon: Icon(Icons.calendar_today),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    labelText: 'Return',
                    suffixIcon: Icon(Icons.calendar_today),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),

          // Travelers and cabin class
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: Responsive.width(context, 5)),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    labelText: 'Travelers',
                    suffixIcon: Icon(Icons.calendar_today),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    labelText: 'cabin class',
                    suffixIcon: Icon(Icons.calendar_today),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: Responsive.height(context, 1)),
          // btton Search Flights
          Consumer<FlightProvider>(
            builder: (context, flightProvider, _) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      flightProvider.searchFlights().then((_) {
                        if (flightProvider.flights.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlightDetailsPage(
                                flights: flightProvider.flights,
                              ),
                            ),
                          );
                        }
                      });
                    },
                    child: Container(
                      height: Responsive.height(context, 6),
                      width: Responsive.width(context, 35),
                      decoration: BoxDecoration(
                        color: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: AutoSizeText(
                          'Search Flights',
                          style: AppTextTheme.textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                  if (flightProvider.isLoading)
                    Center(
                      child: CircularProgressIndicator(
                        color: AppColors.kPrimaryColor,
                      ),
                    ),
                  if (flightProvider.error.isNotEmpty)
                    Text(
                      flightProvider.error,
                      style: TextStyle(color: Colors.red),
                    ),
                ],
              );
            },
          ),
          // Travel Inspirations
          SizedBox(height: Responsive.height(context, 3)),
          BuildSectionTitle(
            title: "Travel Inspirations",
            seeAll: "Dubai",
            onTap: () {},
          ),
          SizedBox(height: Responsive.height(context, 1)),
          TravelInspirations(),
          SizedBox(height: Responsive.height(context, 3)),
          // Flight & Hotel Packages
          BuildSectionTitle(
            title: "Flight & Hotel Packages",
            onTap: () {},
          ),
          SizedBox(height: Responsive.height(context, 1)),
          FlightAndHotelPackages(),
          SizedBox(height: Responsive.height(context, 2)),
        ],
      ),
    );
  }
}
