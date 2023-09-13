import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/image_constant.dart';
import 'package:techtestvascomm/const/textstyle.dart';
import 'package:techtestvascomm/reusable/form/customfilledbutton.dart';
import 'package:techtestvascomm/reusable/form/customformlabel.dart';
import 'package:techtestvascomm/reusable/form/customtextformfield.dart';
import 'package:techtestvascomm/screens/auth/login/login_controller.dart';
import 'package:techtestvascomm/screens/auth/register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        init: LoginController(),
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
                          CustomTextFormField(
                            controller: c.email,
                            label: "Email",
                            hintText: "Masukan email anda",
                          ),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomFormLabel(label: "Password"),
                              Text(
                                "Lupa Password anda?",
                                style: TextStyle(color: greyColor.withOpacity(0.7), fontSize: 14, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
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
                          CustomFilledButton(
                            color: blueColor,
                            title: "Login",
                            leadingIcon: Icons.arrow_forward_outlined,
                            onPressed: () => c.doLogin(),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () => Get.to(RegisterScreen()),
                              child: RichText(
                                text: TextSpan(
                                  text: "Belum punya akun ? ",
                                  style: TextStyle(fontSize: 14, color: lightGreyColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " Daftar Sekarang",
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
