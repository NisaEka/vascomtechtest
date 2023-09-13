import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/image_constant.dart';
import 'package:techtestvascomm/const/textstyle.dart';
import 'package:techtestvascomm/data/storage_core.dart';
import 'package:techtestvascomm/reusable/form/customfilledbutton.dart';
import 'package:techtestvascomm/screens/auth/login/login_screen.dart';
import 'package:techtestvascomm/screens/profil/profil_screen.dart';

class SideBar extends StatelessWidget {
  final storage = Get.find<StorageCore>();

  SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      surfaceTintColor: blueColor,
      elevation: 0,
      child: SizedBox(
        width: Get.width,
        child: Row(
          children: [
            Container(
              height: Get.height,
              padding: const EdgeInsets.only(top: 30),
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () => Scaffold.of(context).closeEndDrawer(),
                  icon: const Icon(
                    CupertinoIcons.multiply_circle_fill,
                    color: Colors.white,
                  )),
            ),
            Container(
              color: Colors.white,
              height: Get.height,
              width: Get.width - (Get.width / 3),
              padding: const EdgeInsets.only(top: 130, left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.transparent,
                        child: Image.asset(ImageConstant.userImg),
                      ),
                      const SizedBox(width: 10),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(text: "Angga ", style: listTitleTextStyle.copyWith(fontWeight: bold)),
                            TextSpan(text: "Praja ", style: listSubTitleTextStyle.copyWith(color: blueColor)),
                            const TextSpan(text: "\nMembership BBLK ", style: TextStyle(color: blueColor, fontSize: 11)),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text("Profile Saya", style: TextStyle(color: lightGreyColor)),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 15, color: lightGreyColor),
                    onTap: () => Get.to(const ProfilScreen()),
                  ),
                  const ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text("Pengaturan", style: TextStyle(color: lightGreyColor)),
                    trailing: Icon(Icons.arrow_forward_ios, size: 15, color: lightGreyColor),
                  ),
                  const SizedBox(height: 40),
                  CustomFilledButton(
                    color: redColor,
                    width: 150,
                    title: "Logout",
                    radius: 30,
                    onPressed: () {
                      storage.deleteToken();
                      Get.offAll(LoginScreen());
                    },
                  ),
                  const SizedBox(height: 100),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ikuti kami di", style: TextStyle(fontSize: 16, color: blueColor)),
                      Icon(FontAwesomeIcons.facebook, color: blueColor, size: 16),
                      Icon(FontAwesomeIcons.instagram, color: blueColor, size: 16),
                      Icon(FontAwesomeIcons.twitter, color: blueColor, size: 16)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
