import 'package:flutter/material.dart';
import 'package:flutter_travel_cubit_app/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color backgroundColor;
  final Color color;
  final Color borderColor;
  final double size;
  bool isICon;
  AppButton({
    Key? key,
    this.text = "Hi",
    this.icon,
    required this.backgroundColor,
    required this.color,
    required this.borderColor,
    required this.size,
    this.isICon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Center(
        child: isICon
            ? Icon(
                icon,
                color: color,
              )
            : AppText(
                text: text!,
                color: color,
              ),
      ),
    );
  }
}
