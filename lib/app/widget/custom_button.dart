import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color? textColor;
  final VoidCallback onPress;
  final double width;
  final double height;

  const CustomButton({
    Key? key,
    required this.label,
    required this.color,
    required this.onPress,
    required this.width,
    required this.height,  this.textColor,
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
        child: Text(
          label,
          style: Theme.of(context).textTheme.headline1?.copyWith(
          color:textColor?? AppTheme.whiteBackgroundColor,
          fontSize: 16.spMax.spMin,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
