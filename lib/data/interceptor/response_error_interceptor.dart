import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/data/storage_core.dart';
import 'package:techtestvascomm/screens/auth/login/login_screen.dart';

class ResponseErrorInterceptor extends Interceptor{

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    int statusCode = err.response?.statusCode ?? 0;
    if(statusCode == 401){
      //logout, because token is invalid
      StorageCore().deleteToken();
      Get.offAll(() => const LoginScreen());
    }
    super.onError(err, handler);
  }
}