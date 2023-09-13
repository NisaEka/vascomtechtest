import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart' hide Response, FormData, MultipartFile;
import 'package:techtestvascomm/data/model/auth/login_model.dart';
import 'package:techtestvascomm/data/network_core.dart';
import 'package:techtestvascomm/data/repository/repository.dart';

class RepositoryImpl implements Repository {
  final network = Get.find<NetworkCore>();
  final storageSecure = const FlutterSecureStorage();

  @override
  Future<LoginModel> postLogin(String email, String password) async {
    var data = {"email": email, "password": password};
    try {
      Response response = await network.dio.post("/login", data: jsonEncode(data));
      print(response.data);
      return LoginModel.fromJson(response.data);
    } on DioError catch (e) {
      print("response error: ${e.response?.data}");
      return LoginModel.fromJson(e.response?.data);
    }
  }
}
