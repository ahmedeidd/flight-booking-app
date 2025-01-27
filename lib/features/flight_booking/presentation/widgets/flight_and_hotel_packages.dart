import 'package:flutter/material.dart';
import '../../../../core/utils/responsive.dart';

class FlightAndHotelPackages extends StatelessWidget {
  const FlightAndHotelPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.height(context, 39),
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.width(context, 5),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 0.0,
          childAspectRatio: 0.9,
        ),
        itemCount: 2,
        itemBuilder: (_, i) => ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/image3.png',
            fit: BoxFit.fill,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
