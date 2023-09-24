import 'package:flutter/material.dart';
import 'package:flutter_travel_cubit_app/misc/colors.dart';
import 'package:flutter_travel_cubit_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.isResponsive = false, this.width = 120});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive! ? double.maxFinite : width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor,
        ),
        child: Row(
          mainAxisAlignment: isResponsive!
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.center,
          children: [
            isResponsive!
                ? AppText(
                    text: "Book Trip Now",
                    color: Colors.white,
                  )
                : Container(),
            const Icon(
              Icons.keyboard_double_arrow_right,
              color: Colors.white,
              size: 36,
            )
          ],
        ),
      ),
    );
  }
}
