import 'package:flight_booking_app/features/flight_booking/presentation/pages/flight_search_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/flight_booking/domain/usecases/get_flights_usecase.dart';
import 'features/flight_booking/data/repositories/flight_repository_impl.dart';
import 'features/flight_booking/data/datasources/flight_remote_datasource.dart';
import 'features/flight_booking/presentation/provider/flight_provider.dart';

void main() {
  final flightRepository = FlightRepositoryImpl(FlightRemoteDataSource());
  final getFlightsUseCase = GetFlightsUseCase(flightRepository);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => FlightProvider(getFlightsUseCase)),
      ],
      child: FlightBookingApp(),
    ),
  );
}

class FlightBookingApp extends StatelessWidget {
  const FlightBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Booking',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FlightSearchPage(),
    );
  }
}
