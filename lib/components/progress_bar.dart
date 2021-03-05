import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double value;
  final double height;
  final Color tint;
  final Color backgroundColor;

  const ProgressBar({
    this.value = 0.5,
    this.height = 10,
    this.tint = const Color(0xFFA4CA3F),
    this.backgroundColor = const Color(0xFFEAEAEA),
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: FractionallySizedBox(
        widthFactor: value,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: tint,
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
      ),
    );
  }
}
