import 'package:fassballbero/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view/profile.dart';
import '../constant/image_paths.dart';
import '../utils/app_theme.dart';
import 'dialog.dart';

class MyDrawer extends StatelessWidget {
  static final List<String> _listViewData = [
    "Home",
    "Profile",
    "Spieler",
    "Training",
    "Narichten",
  ];
  final List<String> drawerClass = [
    '/home',
    '/profile',
    '/SpielerScreen',
    '/trainingScreen',
    '/narichtenScreen',
  ];

  MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: SizedBox(
          height: 1.sh,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          size: 25,
                        )),
                  ],
                ),
              ),
              Column(
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () =>
                            Navigator.pushNamed(context, drawerClass[index]),
                        title: Text(
                          _listViewData[index],
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: _listViewData.length,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return MyDialog();
                      });
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 0.03.sw,
                    ),
                    const Image(image: AssetImage(ImagePaths.personIcon)),
                    SizedBox(
                      width: 0.04.sw,
                    ),
                    Text(
                      "Sign Out",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                            color: AppTheme.blackColor,
                            fontSize: 12.spMax.spMin,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    SizedBox(
                      height: 0.07.sh,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
