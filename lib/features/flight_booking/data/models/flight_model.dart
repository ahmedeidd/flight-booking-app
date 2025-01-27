import '../../domain/entities/flight_entity.dart';

class FlightModel extends Flight {
  FlightModel({
    required super.onwardTitle,
    required super.returnTitle,
    required super.onwardTime,
    required super.returnTime,
    required super.onwardDuration,
    required super.returnDuration,
    required super.onwardStops,
    required super.returnStops,
    required super.onwardPrice,
    required super.returnPrice,
    required super.from,
    required super.to,
    required super.departureTime,
    required super.arrivalTime,
    required super.price,
  });
  // we will use FlightModel.fromJsonwith api
}
