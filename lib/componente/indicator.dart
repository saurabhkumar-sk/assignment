import 'package:assignment/colors/my_colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? MyColors.greycolor : Colors.grey,
          borderRadius: BorderRadius.circular(6),
        ),
        height: isActive ? 8 : 8,
        width: isActive ? 20 : 8,
      ),
    );
  }
}
