import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_app/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_text.dart';
import '../../../../core/utils/responsive.dart';

class BuildTripTypeButton extends StatelessWidget {
  final BuildContext? context;
  final String? label;
  final bool? isSelected;
  const BuildTripTypeButton({
    super.key,
    this.context,
    this.isSelected,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.width(context, 30),
      padding: EdgeInsets.symmetric(vertical: Responsive.height(context, 2)),
      decoration: BoxDecoration(
        color: isSelected! ? AppColors.kPrimaryColor : Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: AutoSizeText(
          label!,
          style: AppTextTheme.textTheme.labelLarge?.copyWith(
            color: isSelected! ? Colors.white : Colors.black,
            fontWeight: isSelected! ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
