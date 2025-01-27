import '../entities/flight_entity.dart';

abstract class FlightRepository {
  Future<List<Flight>> getFlights();
}
