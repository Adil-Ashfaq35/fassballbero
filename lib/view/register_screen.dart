import 'package:fassballbero/app/widget/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/constant/image_paths.dart';
import '../app/utils/app_theme.dart';
import 'home.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.whiteBackgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 0.05.sh,
              ),
              const SizedBox(
                child: Image(image: AssetImage(ImagePaths.fussBallHeroIcon)),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal:25.spMax ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    Text("Regestrierung",style: Theme.of(context).textTheme.headline1?.copyWith(
                      color: AppTheme.blackColor,
                      fontSize: 25.spMax,
                      fontWeight: FontWeight.bold,
                    ),),

                    SizedBox(
                      height: 0.05.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                        decoration: decoration.copyWith(
                          labelText:"Vereinsname",
                        )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"Rückennummer",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"Vorname",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"Vorname",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"Nachname",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"E-Mail",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"Passwort",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.02.sh,
                    ),
                    SizedBox(
                      height: 45.spMax.spMin,
                      child: TextFormField(
                          decoration: decoration.copyWith(
                            labelText:"Geworben",
                          )
                      ),
                    ),
                    SizedBox(
                      height: 0.04.sh,
                    ),

                    CustomButton(label: "Login", color: AppTheme.primaryColor, onPress: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      const HomeScreen(),
                      ));

                    }, width: 1.sw, height: 0.06.sh)
                  ],
                ),
              ),


            ],
          ),
        ));
  }

}

InputDecoration decoration =InputDecoration(
labelText: 'Vereinsname',
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(40),
),
contentPadding: EdgeInsets.only(left: 20.spMin.spMax),
focusedBorder: OutlineInputBorder(
borderRadius: BorderRadius.circular(40.0),
borderSide: const BorderSide(color: AppTheme.borderColor),
));
