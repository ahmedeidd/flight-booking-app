import 'package:flutter/material.dart';
import '../../../../core/utils/responsive.dart';

class TravelInspirations extends StatelessWidget {
  const TravelInspirations({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.height(context, 35),
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
          childAspectRatio: 1.4,
        ),
        itemCount: 2,
        itemBuilder: (_, i) => Image.asset(
          'assets/images/image.png',
          fit: BoxFit.fill,
          width: double.infinity,
        ),
      ),
    );
  }
}
