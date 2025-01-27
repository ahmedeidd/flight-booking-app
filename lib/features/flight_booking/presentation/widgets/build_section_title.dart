import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/app_text.dart';
import '../../../../core/utils/responsive.dart';

class BuildSectionTitle extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  final String? seeAll;
  const BuildSectionTitle({
    this.title,
    this.onTap,
    this.seeAll = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.height(context, 3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText(
            title!,
            style: AppTextTheme.textTheme.labelLarge?.copyWith(fontSize: 12),
          ),
          InkWell(
            onTap: onTap,
            child: AutoSizeText(
              seeAll!,
              style: AppTextTheme.textTheme.labelLarge?.copyWith(
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                decorationThickness: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
