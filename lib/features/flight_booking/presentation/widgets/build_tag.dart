import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/app_text.dart';
import '../../../../core/utils/responsive.dart';

class BuildTag extends StatelessWidget {
  final String? text;
  final Color? color;
  const BuildTag({
    super.key,
    this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.width(context, 3),
        vertical: Responsive.height(context, 0.5),
      ),
      decoration: BoxDecoration(
        color: color!.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color!),
      ),
      child: AutoSizeText(
        text!,
        style: AppTextTheme.textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.normal,
          color: color,
          fontSize: 9,
        ),
        maxLines: 1,
      ),
    );
  }
}
