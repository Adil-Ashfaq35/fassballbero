// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart'as snaki;
// import 'package:rajpootpharmacy/app/constant/const_values.dart';
// import 'package:rajpootpharmacy/app/constant/controllers.dart';
// import 'package:rajpootpharmacy/app/services/Models/errorModel.dart';
//
// import 'Models/registrationModel.dart';
//
//
// class RegisterUserService {
//   final Dio dio = Dio();
//
//   Future<> registerUser({var formData}) async {
//
//     try {
//       Response response = await dio.post(
//         '${Constant.baseUrl}auth/register',
//         data: formData,
//         options: Options(
//           contentType: Headers.formUrlEncodedContentType,
//           followRedirects: false,
//           validateStatus: (status) => true,
//         ),
//       );
//       if (response.statusCode! > 200 && response.statusCode! <299 ) {
//         if (kDebugMode) {
//           print('user: ${response.data}');
//         }
//        return response.data;
//
//       }
//       else{
//        return response.data;
//
//       }
//
//
//
//     } catch (e) {
//       if (kDebugMode) {
//         print('Error Registering : $e');
//       }
//     }
//
//   }
// }
