import 'package:fassballbero/app/constant/image_paths.dart';
import 'package:fassballbero/app/widget/custom_button_double_text.dart';
import 'package:fassballbero/app/widget/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/utils/app_theme.dart';
import '../app/widget/customAppBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(onTap: (){
        _scaffoldKey.currentState!.openEndDrawer();
      }),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:15.spMin.spMax,vertical: 30.spMin.spMax ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.r),
              ),
              child: Container(
                height: 300.spMax.spMin,
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
                              buildIconRow(context,path:ImagePaths.armIcon),
                              SizedBox(
                                height: 0.02.sh,
                              ),
                              buildIconRow(context,path:ImagePaths.footballIcon),
                              SizedBox(
                                height: 0.02.sh,
                              ),
                              buildIconRow(context,path:ImagePaths.heartIcon),
                              SizedBox(
                                height: 0.02.sh,
                              ),
                              buildIconRow(context,path:ImagePaths.faceIcon),
                              SizedBox(
                                height: 0.02.sh,
                              ),
                              buildIconRow(context,path:ImagePaths.shoesIcon),
                              SizedBox(
                                height: 0.02.sh,
                              ),
                              CustomButtonWithText(label: "Wertung", color: AppTheme.primaryColor, onPress: (){}, width: 0.4.sw, height: 0.035.sh)
                            ],
                          ),
                        )),
                    const Expanded(
                        flex: 1,
                        child: Image(image: AssetImage(
                              ImagePaths.manIcon,
                        )))
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 0.025.sh
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r),
              ),
              color: AppTheme.whiteBackgroundColor,
              child: Container(
                height: 60.spMax.spMin,
                width: 1.sw,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Nachrichten",style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: AppTheme.blackColor,
                      fontSize: 15.spMax.spMin,
                      fontWeight: FontWeight.w700,
                    ),),
                   Row(
                     children: [
                       const ImageIcon(AssetImage(ImagePaths.envelopIcon)),
                       SizedBox(
                         width: 0.04.sw,
                       ),
                       Text("1",style: Theme.of(context).textTheme.headline1?.copyWith(
                         color: AppTheme.blackColor,
                         fontSize: 15.spMax.spMin,
                         fontWeight: FontWeight.w700,
                       ),),
                     ],
                   )
                  ],
                ),
              ),
            ),
            SizedBox(
             height: 0.015.sh
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r),
              ),
              color: AppTheme.whiteBackgroundColor,
              child: Container(
                height: 150.spMax.spMin,
                width: 1.sw,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30.spMin.spMin,vertical: 30.spMax.spMin),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Training",style: Theme.of(context).textTheme.headline1?.copyWith(
                            color: AppTheme.blackColor,
                            fontSize: 15.spMax.spMin,
                            fontWeight: FontWeight.w700,
                          ),),
                          Row(
                            children: [
                              const ImageIcon(AssetImage(ImagePaths.arrowIcon)),
                              SizedBox(width: 0.04.sw,),
                              const ImageIcon(AssetImage(ImagePaths.arrowIcon)),
                            ],
                          ),
                        ],
                      ),
                      Text("Starte jetzt mit deinen neusten Übungen und Challenges!",style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: AppTheme.blackColor,
                        fontSize: 12.spMax.spMin,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: MyDrawer(),
    );
  }

  Row buildIconRow(BuildContext context,{required String path}) {
    return Row(
                              children:  [
                                 ImageIcon(AssetImage(path)),
                                SizedBox(width: 0.08.sw,),
                                Text("23",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: AppTheme.blackColor,
                                  fontSize: 14.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            );


  }
}


