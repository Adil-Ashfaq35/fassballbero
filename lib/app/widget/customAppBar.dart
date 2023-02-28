import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/image_paths.dart';
import '../utils/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onTap;
  const CustomAppBar({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        titleSpacing: -40,
        backgroundColor: AppTheme.whiteBackgroundColor,
        title: SizedBox(
          height: 70.spMin.spMax,
          width: 130.spMax.spMin,
          child:  const Image(image: AssetImage(
              ImagePaths.fussBallHeroIcon
          )),
        ),
        actions:[
          InkWell(
            onTap: onTap,
            child: SizedBox(
              width: 70.spMin.spMax,
              height: 50.spMax.spMin,
              child: const Image(
                image: AssetImage(ImagePaths.menuIcon),
              ),
            ),
          )
        ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(63);
}