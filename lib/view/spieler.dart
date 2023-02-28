import 'package:fassballbero/app/widget/customAppBar.dart';
import 'package:fassballbero/app/widget/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/constant/image_paths.dart';
import '../app/utils/app_theme.dart';
import '../app/widget/custom_button_double_text.dart';

class SpielerScreen extends StatelessWidget {
   SpielerScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key:_scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: CustomAppBar(onTap: () {
        _scaffoldKey.currentState!.openEndDrawer();
      },),
          body: Padding(
            padding:  EdgeInsets.symmetric(horizontal:15.spMin.spMax,vertical: 10.spMin.spMax ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 0.04.sh,),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Container(
                      height: 150.spMax.spMin,
                      width: 1.sw,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteBackgroundColor,
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Volker Schmidt",style: Theme.of(context).textTheme.headline1?.copyWith(
                                      color: AppTheme.blackColor,
                                      fontSize: 18.spMax.spMin,
                                      fontWeight: FontWeight.w700,
                                    ),),
                                    Text("FC Eisenhart",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                      color: AppTheme.blackColor,
                                      fontSize: 14.spMax.spMin,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                    SizedBox(
                                      height: 0.02.sh,
                                    ),

                                    CustomButtonWithText(label: "Wertung", color: AppTheme.primaryColor, onPress: (){}, width: 0.4.sw, height: 0.035.sh)
                                  ],
                                ),
                              )),
                            Expanded(
                              flex: 1,
                              child: SizedBox(
                                height: 120.spMax.spMin,
                                child:const Image(image: AssetImage(
                                  ImagePaths.manIcon,
                                )),
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 0.02.sh,),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Container(
                      height: 0.6.sh,
                      width: 1.sw,
                      decoration: BoxDecoration(
                          color: AppTheme.whiteBackgroundColor,
                          borderRadius: BorderRadius.circular(15.r)
                      ),
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 20),
                            child: Text("Einzelkategorien",style: Theme.of(context).textTheme.headline1?.copyWith(
                              color: AppTheme.blackColor,
                              fontSize: 18.spMax.spMin,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          SizedBox(height: 0.05.sh,),
                          const RatingWidget(
                            iconPath: ImagePaths.armIcon,
                          ),
                          SizedBox(height: 0.05.sh,),
                          const RatingWidget(
                            iconPath: ImagePaths.footballIcon,
                          ),
                          SizedBox(height: 0.05.sh,),
                          const RatingWidget(
                            iconPath: ImagePaths.heartIcon,
                          ) ,
                          SizedBox(height: 0.05.sh,),
                          const RatingWidget(
                            iconPath: ImagePaths.faceIcon,
                          ) ,
                          SizedBox(height: 0.05.sh,),
                          const RatingWidget(
                            iconPath: ImagePaths.shoesIcon,
                          )
                        ],
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  final String iconPath;
  const RatingWidget({
    Key? key,
    required this.iconPath
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Expanded(
            flex:1,
            child: Image(image: AssetImage(iconPath),fit: BoxFit.fitHeight,height: 30,),
        ),
        Expanded(
            flex:3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Athletik",style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: AppTheme.blackColor,
                  fontSize: 14.spMax.spMin,
                  fontWeight: FontWeight.bold,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star,color: AppTheme.lightGreyColor,),
                    Icon(Icons.star,color: AppTheme.lightGreyColor,),
                    Icon(Icons.star,color: AppTheme.lightGreyColor,)
                  ],
                )
              ],
            )),
        Expanded(
            flex:1,
            child:Text("24",style: Theme.of(context).textTheme.headline1?.copyWith(
              color: AppTheme.blackColor,
              fontSize: 18.spMax.spMin,
              fontWeight: FontWeight.bold,
            ),),),
      ],
    );
  }
}
