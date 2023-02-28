import 'package:fassballbero/app/widget/customAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/constant/image_paths.dart';
import '../app/utils/app_theme.dart';
import '../app/widget/custom_button.dart';
import '../app/widget/custom_drawer.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      appBar: CustomAppBar(onTap: () {
        _scaffoldKey.currentState!.openEndDrawer();
      },),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Container(
                  height: 350.spMax.spMin,
                  width: 1.sw,
                  decoration: BoxDecoration(
                      color: AppTheme.whiteBackgroundColor,
                      borderRadius: BorderRadius.circular(15.r)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.02.sh,),
                        Text("User ID",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: Colors.black45,
                          fontSize: 12.spMax.spMin,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: 0.004.sh,),
                        SizedBox(
                          height: 45.spMax.spMin,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: '',
                              fillColor: AppTheme.lightGreyColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: EdgeInsets.only(left: 20.spMin.spMax),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: AppTheme.lightGreyColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: AppTheme.borderColor),
                              ),


                            ),
                          ),
                        ),
                        SizedBox(height: 0.02.sh,),
                        Text("Name",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: Colors.black45,
                          fontSize: 12.spMax.spMin,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: 0.004.sh,),
                        SizedBox(
                          height: 45.spMax.spMin,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: '',
                              fillColor: AppTheme.lightGreyColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: EdgeInsets.only(left: 20.spMin.spMax),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: AppTheme.lightGreyColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: AppTheme.borderColor),
                              ),


                            ),
                          ),
                        ),
                        SizedBox(height: 0.02.sh,),
                        Text("User ID",textAlign: TextAlign.start,style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: Colors.black45,
                          fontSize: 12.spMax.spMin,
                          fontWeight: FontWeight.w500,
                        ),),
                        SizedBox(height: 0.004.sh,),
                        SizedBox(
                          height: 45.spMax.spMin,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: '',
                              fillColor: AppTheme.lightGreyColor,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              contentPadding: EdgeInsets.only(left: 20.spMin.spMax),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: AppTheme.lightGreyColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: const BorderSide(color: AppTheme.borderColor),
                              ),


                            ),
                          ),
                        ),
                        SizedBox(height: 0.05.sh,),
                        Center(
                          child: CustomButton(label: "Speichern", color: AppTheme.primaryColor, onPress: (){

                          }, width: 0.8.sw, height: 0.06.sh),
                        )
                      ],
                    ),
                  )
                ),
              ),
              SizedBox(height: 0.04.sh,),
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
                    child:Center(child: const Image(image: AssetImage(ImagePaths.manIcon))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
