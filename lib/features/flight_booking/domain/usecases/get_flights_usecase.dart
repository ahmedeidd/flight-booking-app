import '../entities/flight_entity.dart';
import '../repositories/flight_repository.dart';

class GetFlightsUseCase {
  final FlightRepository repository;

  GetFlightsUseCase(this.repository);

  Future<List<Flight>> execute() async {
    return repository.getFlights();
  }
}
