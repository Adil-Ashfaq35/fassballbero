import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class CustomButtonWithText extends StatelessWidget {
  final String label;
  final Color color;
  final VoidCallback onPress;
  final double width;
  final double height;

  const CustomButtonWithText({
    Key? key,
    required this.label,
    required this.color,
    required this.onPress,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.spMax.spMin),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.headline1?.copyWith(
                color: AppTheme.whiteBackgroundColor,
                fontSize: 10.spMax.spMin,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "23",
              style: Theme.of(context).textTheme.headline1?.copyWith(
                color: AppTheme.whiteBackgroundColor,
                fontSize: 10.spMax.spMin,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
