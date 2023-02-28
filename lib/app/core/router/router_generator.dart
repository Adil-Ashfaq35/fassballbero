// import 'package:flutter/material.dart';
// import 'package:rajpootpharmacy/view/authentication/login.dart';
// import 'package:rajpootpharmacy/view/authentication/register.dart';
// import 'package:rajpootpharmacy/view/home/homePage.dart';
//
// import '../../../view/authentication/verification.dart';
// import '../../../view/category/cosmtics_category_page.dart';
// import '../../../view/category/diaper_category_page.dart';
// import '../../../view/category/general_category_page.dart';
// import '../../../view/category/medicine_category_page.dart';
// import '../../../view/category/milk_category_page.dart';
// import '../../../view/home/cart.dart';
// import '../../../view/home/upload_prescription.dart';
//
// class RouteGenerator {
//   static const String homePage = '/homePage';
//   static const String loginPage = '/login';
//   static const String registrationPage = '/register';
//   static const String verificationPage = '/verification';
//   static const String uploadPrescription = '/UploadPrescription';
//   static const String medicineCategoryPage = '/medicineCategoryPage';
//   static const String milkCategoryPage = '/milkCategoryPage';
//   static const String diaperCategoryPage = '/diaperCategoryPage';
//   static const String generalCategoryPage = '/generalCategoryPage';
//   static const String cosmeticsCategoryPage = '/cosmeticsCategoryPage';
//   static const String cartScreen = '/CartScreen';
//
//
//   static const String customDrawer = '/custom-drawer';
//
//   static Route<dynamic> onGeneratedRoutes(RouteSettings settings) {
//     late dynamic args;
//     if (settings.arguments != null) {
//       args = settings.arguments as Map;
//     }
//     debugPrint(settings.name);
//     switch (settings.name) {
//       case loginPage:
//         return _getPageRoute(const LoginPage());
//       case registrationPage:
//         return _getPageRoute(const RegistrationPage());
//       case verificationPage:
//         return _getPageRoute( VerificationPage());
//       case homePage:
//         return _getPageRoute( const HomePage());
//         case uploadPrescription:
//         return _getPageRoute( const UploadPrescription());
//         case medicineCategoryPage:
//         return _getPageRoute( const MedicineCategoryPage());
//         case milkCategoryPage:
//         return _getPageRoute( const MilkCategoryPage());
//         case diaperCategoryPage:
//         return _getPageRoute( const DiaperCategoryPage());
//         case generalCategoryPage:
//         return _getPageRoute( const GeneralCategoryPage());
//         case cosmeticsCategoryPage:
//         return _getPageRoute( const CosmeticsCategoryPage());
//         case cartScreen:
//         return _getPageRoute(   CartScreen(back:args['back']));
//       default:
//         return _errorRoute();
//     }
//   }
//
//   // FUNCTION THAT HANDLES NAVIGATION
//   static PageRoute _getPageRoute(Widget child) {
//     return MaterialPageRoute(builder: (ctx) => child);
//   }
//
//   // 404 PAGE
//   static PageRoute _errorRoute() {
//     return MaterialPageRoute(builder: (ctx) {
//       return Scaffold(
//         appBar: AppBar(
//           title: const Text('404'),
//         ),
//         body: const Center(
//           child: Text('ERROR 404: Not Found'),
//         ),
//       );
//     });
//   }
// }
