import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/base/base_controller.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/screens/home/home_screen.dart';

class LoginController extends BaseController {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  bool isObscurePasswordLogin = true;
  Widget showIcon = const Icon(
    CupertinoIcons.eye_fill,
    color: Colors.grey,
  );

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> doLogin() async {
    await repository.postLogin(email.text, password.text).then((value) {
      storage.saveToken(value.token.toString());
      print(value);
      if (value.token != null) {
        Get.offAll(HomeScreen());
      }
      Get.showSnackbar(
        GetSnackBar(
          icon: Icon(
            Icons.error,
            color: Colors.white,
          ),
          message: value.error ?? "Welcome",
          isDismissible: true,
          duration: Duration(seconds: 3),
          backgroundColor: value.error != null ? errorColor : successColor,
        ),
      );
    });
  }
}
