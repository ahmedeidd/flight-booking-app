import '../models/flight_model.dart';

class FlightRemoteDataSource {
  Future<List<FlightModel>> fetchFlights() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      FlightModel(
        onwardTitle: "Onward - Garuda Indonesia",
        returnTitle: "Return - Garuda Indonesia",
        onwardTime: "14:35 - 21:55",
        returnTime: "21:55 - 14:35",
        onwardDuration: "4h 30m",
        returnDuration: "4h 30m",
        onwardStops: "2 Stops",
        returnStops: "2 Stops",
        onwardPrice: "AED 409",
        returnPrice: "AED 359",
        from: "from",
        to: "to",
        departureTime: '14:35',
        arrivalTime: '21:55',
        price: 409.0,
      ),
      FlightModel(
        onwardTitle: "Onward - Garuda Indonesia",
        returnTitle: "Return - Garuda Indonesia",
        onwardTime: "14:35 - 21:55",
        returnTime: "21:55 - 14:35",
        onwardDuration: "4h 30m",
        returnDuration: "4h 30m",
        onwardStops: "2 Stops",
        returnStops: "2 Stops",
        onwardPrice: "AED 409",
        returnPrice: "AED 359",
        from: "from",
        to: "to",
        departureTime: '14:35',
        arrivalTime: '21:55',
        price: 409.0,
      ),
    ];
  }
}
