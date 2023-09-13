import 'package:get/get.dart';
import 'package:techtestvascomm/data/repository/repository.dart';
import 'package:techtestvascomm/data/storage_core.dart';
import 'package:techtestvascomm/reusable/dialog/fail_dialog.dart';
import 'package:techtestvascomm/reusable/dialog/success_dialog.dart';

abstract class BaseController extends GetxController {
  final repository = Get.find<Repository>();
  final storage = Get.find<StorageCore>();


  Future<void> showApprovalSuccessDialog(String message){
    return Get.dialog(
        SuccessDialog(
          message: message,
          onClosePressed: () {
            Get.back();
          },
        )
    );
  }

  Future<void> showApprovalFailDialog(String message){
    return Get.dialog(
        FailDialog(
          message: message,
          onClosePressed: () {
            Get.back();
          },
        )
    );
  }
}