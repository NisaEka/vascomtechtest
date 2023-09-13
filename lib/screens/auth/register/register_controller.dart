import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:techtestvascomm/base/base_controller.dart';

class RegisterController extends BaseController {
  final formKey = GlobalKey<FormState>();
  final namaDepan = TextEditingController();
  final namaBelakang = TextEditingController();
  final noKTP = TextEditingController();
  final email = TextEditingController();
  final noTelp = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

  bool isObscurePasswordLogin = true;
  bool isObscurePasswordConfirm = true;
  Widget showIcon = const Icon(
    CupertinoIcons.eye_fill,
    color: Colors.grey,
  );
  Widget showIconConfirm = const Icon(
    CupertinoIcons.eye_fill,
    color: Colors.grey,
  );
}
