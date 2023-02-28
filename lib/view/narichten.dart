import 'package:fassballbero/app/widget/customAppBar.dart';
import 'package:fassballbero/app/widget/custom_drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/constant/image_paths.dart';
import '../app/utils/app_theme.dart';

class NarichtenScreen extends StatelessWidget {

   NarichtenScreen({Key? key}) : super(key: key);
   GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: CustomAppBar(onTap: (){
        _scaffoldKey.currentState!.openEndDrawer();
      }),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 0.03.sh,),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 60),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Container(
                  height: 150.spMax.spMin,
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: AppTheme.whiteBackgroundColor,
                      borderRadius: BorderRadius.circular(15.r)
                  ),
                  child:Column(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                 const Image(image: AssetImage(
                                  ImagePaths.trainingPerson,
                                ),
                                 height: 30,
                                   width: 30,
                                 ),
                                SizedBox(width: 0.02.sh,),
                                Text("Trainer Mathias",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.black,
                                  fontSize: 12.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(right: 12),
                              child: Icon(Icons.lock,color: AppTheme.blackColor,)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.03.sh,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Who was that photographer you shared with me recently?",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: Colors.black,
                          fontSize: 12.spMax.spMin,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ],
                  )
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 0.04.sw),
            child: Text("3:00 PM",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
              color: Colors.black45,
              fontSize: 12.spMax.spMin,
              fontWeight: FontWeight.w700,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 60),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Image(image: AssetImage(
                                  ImagePaths.trainingPerson,
                                ),
                                  height: 30,
                                  width: 30,
                                ),
                                SizedBox(width: 0.02.sh,),
                                Text("Trainer Mathias",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                                  color: Colors.black,
                                  fontSize: 12.spMax.spMin,
                                  fontWeight: FontWeight.w500,
                                ),),
                              ],
                            ),
                            const Padding(
                                padding:  EdgeInsets.only(right: 12),
                                child: Icon(Icons.lock,color: AppTheme.blackColor,)
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.03.sh,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:SizedBox(
                          height: 200.spMax.spMin,
                          width: 200.spMax.spMin,
                          child: const Image(
                            image: AssetImage(
                              ImagePaths.trainerShoes,
                            ),
                          ),
                        )
                      ),
                    ],
                  )
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 0.04.sw),
            child: Text("3:00 PM",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
              color: Colors.black45,
              fontSize: 12.spMax.spMin,
              fontWeight: FontWeight.w700,
            ),),
          ),

        ],
      ),
    );
  }
}
