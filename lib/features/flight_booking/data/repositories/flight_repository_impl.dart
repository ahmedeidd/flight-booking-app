import '../../domain/entities/flight_entity.dart';
import '../../domain/repositories/flight_repository.dart';
import '../datasources/flight_remote_datasource.dart';

class FlightRepositoryImpl implements FlightRepository {
  final FlightRemoteDataSource remoteDataSource;

  FlightRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Flight>> getFlights() async {
    return await remoteDataSource.fetchFlights();
  }
}
