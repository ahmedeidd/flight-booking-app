import 'package:flight_booking_app/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_text.dart';
import '../../../../core/utils/responsive.dart';

class BuildSearchField extends StatelessWidget {
  final BuildContext? context;
  final IconData icon;
  final String hintText;
  final TextEditingController? controller;
  const BuildSearchField({
    super.key,
    this.context,
    required this.icon,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: AppColors.kPrimaryColor),
          SizedBox(width: Responsive.width(context, 3)),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: AppTextTheme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                  fontSize: 14,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
