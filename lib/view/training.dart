import 'package:fassballbero/app/constant/image_paths.dart';
import 'package:fassballbero/app/widget/customAppBar.dart';
import 'package:fassballbero/app/widget/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/utils/app_theme.dart';
import '../app/widget/custom_button.dart';

class TrainingScreen extends StatelessWidget {
   TrainingScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: CustomAppBar(onTap: (){
        _scaffoldKey.currentState!.openEndDrawer();
      }),
      body: Padding(
        padding:  EdgeInsets.only(left: 15.spMax.spMin,right: 15.spMin.spMax,top: 20.spMax.spMin),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButton(label: "Übungen", color: AppTheme.primaryColor, onPress: (){
                }, width: 0.4.sw, height: 0.06.sh),
                CustomButton(label: "Challenges", color: AppTheme.whiteBackgroundColor, onPress: (){
                }, width: 0.4.sw, height: 0.06.sh,
                textColor: AppTheme.blackColor,
                ),
              ],
            ),
              SizedBox(
                height: 0.04.sh,
              ),

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
                    child:Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               const Image(image: AssetImage(
                                 ImagePaths.trainingPerson,
                               )),
                               SizedBox(width: 0.02.sh,),
                               Text("Liegestütze",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                 color: Colors.black,
                                 fontSize: 12.spMax.spMin,
                                 fontWeight: FontWeight.w500,
                               ),),
                             ],
                           ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Text("01.02.2023",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                color: Colors.black,
                                fontSize: 12.spMax.spMin,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),

                          ],

                        ),
                        SizedBox(height:0.02.sh),
                        const Divider(
                          color: AppTheme.darkLightColor,
                          height: 4,
                          indent: 1,
                        ),
                        SizedBox(height: 0.03.sh,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              const Expanded(
                                  flex: 1,
                                  child: Image(
                                image: AssetImage(
                                  ImagePaths.trainingPic,
                                ),
                              )),

                              Expanded(
                                flex: 1,
                                child:  Text("Wir packen es an, es stehen Liegestütze auf dem Programm. Für einen stabilen Oberkörper, nicht nur im Zweikampf, sondern auch … (Zur Übung)",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                color: Colors.black45,
                                fontSize: 12.spMax.spMin,
                                fontWeight: FontWeight.w500,
                              ),),)
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox.shrink()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Image(image: AssetImage(
                              ImagePaths.armIcon,
                            ),
                            height: 30,
                              width: 40,
                              fit: BoxFit.fitHeight,
                            ),
                            CustomButton(label: "Von Trainer Mathias", color: AppTheme.primaryColor, onPress: (){
                            }, width: 0.5.sw, height: 0.055.sh),
                            Text("10",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                              color: Colors.red,
                              fontSize: 14.spMax.spMin,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                        SizedBox(height: 20.spMin.spMax,)
                      ],
                    )
                ),
              ),
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
                    child:Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(image: AssetImage(
                                  ImagePaths.trainingPerson,
                                )),
                                SizedBox(width: 0.02.sh,),
                                Text("Liegestütze",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.black,
                                  fontSize: 12.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Text("01.02.2023",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                color: Colors.black,
                                fontSize: 12.spMax.spMin,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),

                          ],

                        ),
                        SizedBox(height:0.02.sh),
                        const Divider(
                          color: AppTheme.darkLightColor,
                          height: 4,
                          indent: 1,
                        ),
                        SizedBox(height: 0.03.sh,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              const Expanded(
                                  flex: 1,
                                  child: Image(
                                    image: AssetImage(
                                      ImagePaths.trainingPic,
                                    ),
                                  )),

                              Expanded(
                                flex: 1,
                                child:  Text("Wir packen es an, es stehen Liegestütze auf dem Programm. Für einen stabilen Oberkörper, nicht nur im Zweikampf, sondern auch … (Zur Übung)",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.black45,
                                  fontSize: 12.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),)
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox.shrink()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Image(image: AssetImage(
                              ImagePaths.armIcon,
                            ),
                              height: 30,
                              width: 40,
                              fit: BoxFit.fitHeight,
                            ),
                            CustomButton(label: "Von Trainer Mathias", color: AppTheme.primaryColor, onPress: (){
                            }, width: 0.5.sw, height: 0.055.sh),
                            Text("10",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                              color: Colors.red,
                              fontSize: 14.spMax.spMin,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                        SizedBox(height: 20.spMin.spMax,)
                      ],
                    )
                ),
              ),
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
                    child:Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(image: AssetImage(
                                  ImagePaths.trainingPerson,
                                )),
                                SizedBox(width: 0.02.sh,),
                                Text("Liegestütze",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.black,
                                  fontSize: 12.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Text("01.02.2023",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                color: Colors.black,
                                fontSize: 12.spMax.spMin,
                                fontWeight: FontWeight.w500,
                              ),),
                            ),

                          ],

                        ),
                        SizedBox(height:0.02.sh),
                        const Divider(
                          color: AppTheme.darkLightColor,
                          height: 4,
                          indent: 1,
                        ),
                        SizedBox(height: 0.03.sh,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              const Expanded(
                                  flex: 1,
                                  child: Image(
                                    image: AssetImage(
                                      ImagePaths.trainingPic,
                                    ),
                                  )),

                              Expanded(
                                flex: 1,
                                child:  Text("Wir packen es an, es stehen Liegestütze auf dem Programm. Für einen stabilen Oberkörper, nicht nur im Zweikampf, sondern auch … (Zur Übung)",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.black45,
                                  fontSize: 12.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),)
                            ],
                          ),
                        ),
                        Expanded(child: SizedBox.shrink()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Image(image: AssetImage(
                              ImagePaths.armIcon,
                            ),
                              height: 30,
                              width: 40,
                              fit: BoxFit.fitHeight,
                            ),
                            CustomButton(label: "Von Trainer Mathias", color: AppTheme.primaryColor, onPress: (){
                            }, width: 0.5.sw, height: 0.055.sh),
                            Text("10",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                              color: Colors.red,
                              fontSize: 14.spMax.spMin,
                              fontWeight: FontWeight.w500,
                            ),),
                          ],
                        ),
                        SizedBox(height: 20.spMin.spMax,)
                      ],
                    )
                ),
              ),
              SizedBox(
                height: 0.09.sh,
              )
            ],
          ),
        ),
      ),
      bottomSheet:   Padding(
        padding: const EdgeInsets.all(10),
        child: CustomButton(label: "Login", color: AppTheme.primaryColor, onPress: (){
        }, width: 1.sw, height: 0.06.sh),
      ) ,
    );
  }
}
