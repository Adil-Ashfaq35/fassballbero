import 'package:fassballbero/app/widget/custom_button.dart';
import 'package:fassballbero/view/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app/constant/image_paths.dart';
import '../app/utils/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.whiteBackgroundColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             const SizedBox(
              child: Image(image: AssetImage(ImagePaths.fussBallHeroIcon)),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(horizontal:25.spMax ),
              child: Column(
                children: [
                  Text("Login",style: Theme.of(context).textTheme.headline1?.copyWith(
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
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        contentPadding: EdgeInsets.only(left: 20.spMin.spMax),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: const BorderSide(color: AppTheme.borderColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.04.sh,
                  ),

                  SizedBox(
                    height: 45.spMax.spMin,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Passwort',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                          contentPadding: EdgeInsets.only(left: 20.spMin.spMax),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: const BorderSide(color: AppTheme.borderColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                          borderSide: const BorderSide(color: AppTheme.borderColor),
                        ),


                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.07.sh,
                  ),

                  CustomButton(label: "Login", color: AppTheme.primaryColor, onPress: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    const RegisterScreen(),
                    ));

                  }, width: 1.sw, height: 0.06.sh)
                ],
              ),
            ),
            Container(),
            Container(),

          ],
        ));
  }
}
