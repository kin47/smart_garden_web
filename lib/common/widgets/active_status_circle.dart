import 'package:flutter/material.dart';
import 'package:smart_garden/common/app_theme/app_colors.dart';

class ActiveStatusCircle extends StatelessWidget {
  final bool isActive;
  final double? size;
  /// default color green

  const ActiveStatusCircle({
    super.key,
    required this.isActive,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 20,
      width: size ?? 20,
      decoration: BoxDecoration(
        color: isActive ? AppColors.green : AppColors.red,
        borderRadius: BorderRadius.all(Radius.circular((size ?? 30) / 2 + 1)),
        boxShadow: [
          BoxShadow(
            color: isActive ? AppColors.green.withOpacity(0.5) : AppColors.red.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
