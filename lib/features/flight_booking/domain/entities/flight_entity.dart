class Flight {
  final String from;
  final String to;
  final String departureTime;
  final String arrivalTime;
  final double price;
  final String onwardTitle;
  final String returnTitle;
  final String onwardTime;
  final String returnTime;
  final String onwardDuration;
  final String returnDuration;
  final String onwardStops;
  final String returnStops;
  final String onwardPrice;
  final String returnPrice;

  Flight({
    required this.onwardTitle,
    required this.returnTitle,
    required this.onwardTime,
    required this.returnTime,
    required this.onwardDuration,
    required this.returnDuration,
    required this.onwardStops,
    required this.returnStops,
    required this.onwardPrice,
    required this.returnPrice,
    required this.from,
    required this.to,
    required this.departureTime,
    required this.arrivalTime,
    required this.price,
  });
}
