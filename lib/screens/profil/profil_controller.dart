import 'package:flutter/material.dart';
import 'package:techtestvascomm/base/base_controller.dart';

class ProfilController extends BaseController{
  final formKey = GlobalKey<FormState>();
  final namaDepan = TextEditingController();
  final namaBelakang = TextEditingController();
  final noKTP = TextEditingController();
  final email = TextEditingController();
  final noTelp = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

}