import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/image_constant.dart';
import 'package:techtestvascomm/const/textstyle.dart';
import 'package:techtestvascomm/reusable/form/customfilledbutton.dart';
import 'package:techtestvascomm/reusable/form/customformlabel.dart';
import 'package:techtestvascomm/reusable/form/customtextformfield.dart';
import 'package:techtestvascomm/screens/auth/login/login_screen.dart';
import 'package:techtestvascomm/screens/auth/register/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (c) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 110, left: 20),
                    child: RichText(
                      text: TextSpan(
                        text: "Hai,",
                        style: TextStyle(fontSize: 28, color: blueColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: " Selamat Datang",
                            style: TextStyle(fontSize: 28, color: blueColor, fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "\nSilahkan login untuk melanjutkan", style: TextStyle(fontSize: 12, color: greyColor))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Image.asset(ImageConstant.loginImg),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Form(
                      key: c.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: Get.width / 2.3,
                                margin: EdgeInsets.only(bottom: 40),
                                child: CustomTextFormField(controller: c.namaDepan, label: "Nama Depan"),
                              ),
                              Container(
                                width: Get.width / 2.3,
                                margin: EdgeInsets.only(bottom: 40),
                                child: CustomTextFormField(controller: c.namaBelakang, label: "Nama BElakang"),
                              ),
                            ],
                          ),
                          CustomTextFormField(
                            controller: c.noKTP,
                            label: "No. KTP",
                            hintText: "Masukan No.KTP anda",
                          ),
                          SizedBox(height: 40),
                          CustomTextFormField(
                            controller: c.email,
                            label: "Email",
                            hintText: "Masukan email anda",
                          ),
                          SizedBox(height: 40),
                          CustomTextFormField(
                            controller: c.noTelp,
                            label: "No. Telp",
                            hintText: "Masukan No.Telp anda",
                            inputType: TextInputType.number,
                          ),
                          SizedBox(height: 40),
                          CustomFormLabel(label: "Password"),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: lightGreyColor.withOpacity(0.16),
                                  blurRadius: 24,
                                  offset: Offset(0, 16), // Shadow position
                                ),
                              ],
                            ),
                            child: TextFormField(
                              controller: c.password,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.w600,
                                  ),
                              obscureText: c.isObscurePasswordLogin,
                              decoration: InputDecoration(
                                fillColor: whiteColor,
                                //jika ontap!=null, maka state "active". jika bukan readyonly, maka state "active". Jika readonly dan ontap == null maka state "inactive"
                                suffixIcon: IconButton(
                                  icon: c.showIcon,
                                  onPressed: () {
                                    c.isObscurePasswordLogin ? c.isObscurePasswordLogin = false : c.isObscurePasswordLogin = true;
                                    c.isObscurePasswordLogin != false
                                        ? c.showIcon = Icon(
                                            CupertinoIcons.eye_fill,
                                            color: Colors.grey,
                                          )
                                        : c.showIcon = Icon(
                                            CupertinoIcons.eye_slash_fill,
                                            color: Colors.grey,
                                          );
                                    c.update();
                                  },
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                hintText: "Masukan password anda",
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          CustomFormLabel(label: "Konfirmasi Password"),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: lightGreyColor.withOpacity(0.16),
                                  blurRadius: 24,
                                  offset: Offset(0, 16), // Shadow position
                                ),
                              ],
                            ),
                            child: TextFormField(
                              controller: c.passwordConfirm,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                    fontSize: 16,
                                    color: Colors.black,
                                    // fontWeight: FontWeight.w600,
                                  ),
                              obscureText: c.isObscurePasswordConfirm,
                              decoration: InputDecoration(
                                fillColor: whiteColor,
                                //jika ontap!=null, maka state "active". jika bukan readyonly, maka state "active". Jika readonly dan ontap == null maka state "inactive"
                                suffixIcon: IconButton(
                                  icon: c.showIconConfirm,
                                  onPressed: () {
                                    c.isObscurePasswordConfirm ? c.isObscurePasswordConfirm = false : c.isObscurePasswordConfirm = true;
                                    c.isObscurePasswordConfirm != false
                                        ? c.showIconConfirm = Icon(
                                            CupertinoIcons.eye_fill,
                                            color: Colors.grey,
                                          )
                                        : c.showIconConfirm = Icon(
                                            CupertinoIcons.eye_slash_fill,
                                            color: Colors.grey,
                                          );
                                    c.update();
                                  },
                                ),
                                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                                hintText: "Konfirmasi password anda",
                                hintStyle: hintTextStyle,
                              ),
                            ),
                          ),
                          SizedBox(height: 40),
                          CustomFilledButton(
                            color: blueColor,
                            title: "Register",
                            leadingIcon: Icons.arrow_forward_outlined,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () => Get.back(),
                              child: RichText(
                                text: TextSpan(
                                  text: "Sudah punya akun ? ",
                                  style: TextStyle(fontSize: 14, color: lightGreyColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " Login Sekarang",
                                      style: TextStyle(fontSize: 14, color: blueColor, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text("©  SILK. all right reserved.", style: TextStyle(color: lightGreyColor)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
