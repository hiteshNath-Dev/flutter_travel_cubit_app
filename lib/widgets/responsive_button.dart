import 'package:flutter/material.dart';
import 'package:flutter_travel_cubit_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.isResponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // Image.asset("img/button-one.jpg"),
          Icon(
            Icons.keyboard_double_arrow_right,
            color: Colors.white,
            size: 36,
          )
        ],
      ),
    );
  }
}
