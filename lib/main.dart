import 'package:fassballbero/view/home.dart';
import 'package:fassballbero/view/loginscreen.dart';
import 'package:fassballbero/view/narichten.dart';
import 'package:fassballbero/view/profile.dart';
import 'package:fassballbero/view/register_screen.dart';
import 'package:fassballbero/view/spieler.dart';
import 'package:fassballbero/view/training.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Map<String, WidgetBuilder> _routes = {
      '/': (BuildContext context) => const LoginScreen(),
      '/register': (BuildContext context) => const RegisterScreen(),
      '/profile': (BuildContext context) =>  ProfileScreen(),
      '/home': (BuildContext context) => const HomeScreen(),
      '/SpielerScreen': (BuildContext context) =>  SpielerScreen(),
      '/trainingScreen': (BuildContext context) =>  TrainingScreen(),
      '/narichtenScreen': (BuildContext context) =>  NarichtenScreen(),
    };
    return ScreenUtilInit(
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
        initialRoute: '/',
        routes: _routes,
        ),
    );
  }
}

