import 'package:auto_size_text/auto_size_text.dart';
import 'package:flight_booking_app/core/resources/app_colors.dart';
import 'package:flight_booking_app/core/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'app_text.dart';

class ToggleBetweenButton extends StatefulWidget {
  final String? text1;
  final String? text2;

  final void Function()? onTap;
  const ToggleBetweenButton({super.key, this.text1, this.text2, this.onTap});

  @override
  State<ToggleBetweenButton> createState() => _ToggleBetweenButtonState();
}

class _ToggleBetweenButtonState extends State<ToggleBetweenButton> {
  bool coloroftext1 = true;
  bool coloroftext2 = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: InkWell(
            child: Container(
              height: Responsive.height(context, 5),
              decoration: BoxDecoration(
                color: coloroftext1
                    ? AppColors.kPrimaryColor
                    : AppColors.transparent,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: AutoSizeText(
                  widget.text1.toString(),
                  style: AppTextTheme.textTheme.bodyLarge?.copyWith(
                    color:
                        coloroftext1 ? Colors.white : AppColors.kPrimaryColor,
                  ),
                ),
              ),
            ),
            onTap: () {
              setState(() {
                coloroftext1 = true;
                coloroftext2 = true;
              });
              widget.onTap;
            },
          ),
        ),
        SizedBox(
          width: Responsive.width(context, 2),
        ),
        Expanded(
          child: InkWell(
            child: Container(
              height: Responsive.height(context, 5),
              decoration: BoxDecoration(
                color: coloroftext1
                    ? AppColors.transparent
                    : AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: AutoSizeText(
                  widget.text2.toString(),
                  style: AppTextTheme.textTheme.bodyLarge?.copyWith(
                    color:
                        coloroftext2 ? AppColors.kPrimaryColor : Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () {
              setState(() {
                coloroftext1 = false;
                coloroftext2 = false;
              });
              //orderController.getHistoryOrderList();
              widget.onTap;
            },
          ),
        ),
      ],
    );
  }
}
