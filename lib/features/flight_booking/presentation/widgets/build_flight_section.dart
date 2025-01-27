import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_text.dart';
import '../../../../core/utils/responsive.dart';

class BuildFlightSection extends StatelessWidget {
  final String title;
  final String time;
  final String duration;
  final String stops;
  final String price;
  const BuildFlightSection({
    super.key,
    required this.title,
    required this.time,
    required this.duration,
    required this.stops,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/iconp.png',
              fit: BoxFit.fill,
            ),
            SizedBox(width: Responsive.width(context, 3)),
            Expanded(
              child: AutoSizeText(
                title.toString(),
                style: AppTextTheme.textTheme.labelLarge?.copyWith(
                  color: Colors.black,
                ),
                maxLines: 1,
              ),
            ),
            AutoSizeText(
              price,
              style: AppTextTheme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              maxLines: 1,
            ),
          ],
        ),
        SizedBox(height: Responsive.height(context, 1)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    time.split(" - ")[0],
                    style: AppTextTheme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(height: Responsive.height(context, 0.5)),
                  AutoSizeText(
                    "BLR - Bengaluru",
                    style: AppTextTheme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/planandline.png',
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: Responsive.height(context, 0.5)),
                  AutoSizeText(
                    duration,
                    style: AppTextTheme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AutoSizeText(
                    time.split(" - ")[1],
                    style: AppTextTheme.textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: Responsive.height(context, 0.5)),
                  AutoSizeText(
                    "DXB - Dubai",
                    style: AppTextTheme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: Responsive.height(context, 0.4)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              stops,
              style: AppTextTheme.textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
              ),
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }
}
