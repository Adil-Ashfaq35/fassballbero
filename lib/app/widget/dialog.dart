import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_theme.dart';
import 'custom_button.dart';

class MyDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Volker Schmidt",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: AppTheme.blackColor,
                        fontSize: 12.spMax.spMin,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "FC Eisenhart",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: AppTheme.blackColor,
                        fontSize: 12.spMax.spMin,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            const SizedBox(height: 100),
            CustomButton(label: "Speichern", color: AppTheme.primaryColor, onPress: (){
            }, width: 0.7.sw, height: 0.05.sh)
          ],
        ),
      ),
    );
  }
}
