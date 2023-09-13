import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:techtestvascomm/data/model/auth/login_model.dart';

abstract class Repository {
  Future<LoginModel> postLogin(String email, String password);
}
