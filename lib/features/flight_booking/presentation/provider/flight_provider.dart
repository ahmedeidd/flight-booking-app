import 'package:flight_booking_app/features/flight_booking/domain/entities/flight_entity.dart';
import 'package:flight_booking_app/features/flight_booking/domain/usecases/get_flights_usecase.dart';
import 'package:flutter/material.dart';

class FlightProvider with ChangeNotifier {
  final GetFlightsUseCase getFlightsUseCase;

  List<Flight> _flights = [];
  bool _isLoading = false;
  String _error = '';

  FlightProvider(this.getFlightsUseCase);

  List<Flight> get flights => _flights;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> searchFlights() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      final flights = await getFlightsUseCase.execute();
      _flights = flights;
    } catch (e) {
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
