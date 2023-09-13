import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/image_constant.dart';
import 'package:techtestvascomm/const/textstyle.dart';
import 'package:techtestvascomm/reusable/form/customfilledbutton.dart';
import 'package:techtestvascomm/reusable/form/customtextformfield.dart';
import 'package:techtestvascomm/reusable/sidebar.dart';
import 'package:techtestvascomm/reusable/topbar.dart';
import 'package:techtestvascomm/screens/profil/profil_controller.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfilController>(
        init: ProfilController(),
        builder: (c) {
          return Scaffold(
            backgroundColor: const Color(0xffF5F8FA),
            appBar: const TopBar(),
            endDrawer: SideBar(),
            drawerScrimColor: blueColor.withOpacity(0.7),
            endDrawerEnableOpenDragGesture: false,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    width: 250,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.24),
                            blurRadius: 24,
                            offset: const Offset(5, 16), // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30)),
                    child: const Row(
                      children: [
                        CustomFilledButton(
                          color: lightBlueColor,
                          title: "Profil Saya",
                          width: 120,
                          fontColor: blueColor,
                          radius: 30,
                          margin: EdgeInsets.all(0),
                        ),
                        CustomFilledButton(
                          color: whiteColor,
                          title: "Pengaturan",
                          width: 110,
                          fontColor: blueColor,
                          radius: 30,
                          margin: EdgeInsets.all(0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          decoration: BoxDecoration(color: blueColor, borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Image.asset(ImageConstant.bgBanner2, fit: BoxFit.none, width: Get.width),
                              Container(
                                margin: const EdgeInsets.only(top: 30, left: 40),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.transparent,
                                      child: Image.asset(
                                        ImageConstant.userImg,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(text: "Angga ", style: appTitle.copyWith(fontWeight: bold, color: whiteColor)),
                                          TextSpan(text: "Praja ", style: appTitle.copyWith(color: whiteColor, fontWeight: regular)),
                                          const TextSpan(text: "\nMembership BBLK ", style: TextStyle(color: whiteColor, fontSize: 11)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 1,
                                child: Container(
                                  width: Get.width - 50,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: lightGreyColor.withOpacity(0.5),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(30),
                                      )),
                                  child: Text(
                                    "Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi",
                                    style: listSubTitleTextStyle.copyWith(color: whiteColor),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                          child: Text("Pilih data yang ingin ditampilkan", style: appTitle),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(color: lightBlueColor, borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.person_pin_rounded,
                                color: blueColor,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(text: "Data Diri", style: listTitleTextStyle.copyWith(color: greyColor)),
                                    const TextSpan(text: "\nData diri anda sesuai KTP", style: TextStyle(color: greyColor, fontSize: 10)),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(color: lightGreyColor, borderRadius: BorderRadius.circular(30)),
                              child: const Icon(
                                Icons.location_on,
                                color: greyColor,
                              ),
                            ),
                          ],
                        ),
                        Form(
                          key: c.formKey,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                            child: Column(
                              children: [
                                CustomTextFormField(
                                  controller: c.namaDepan,
                                  label: "Nama Depan",
                                  hintText: "Masukan Nama depan anda",
                                ),
                                const SizedBox(height: 30),
                                CustomTextFormField(
                                  controller: c.namaBelakang,
                                  label: "Nama Belakang",
                                  hintText: "Masukan Nama belakang anda",
                                ),
                                const SizedBox(height: 30),
                                CustomTextFormField(
                                  controller: c.email,
                                  label: "Email",
                                  hintText: "Masukan email anda",
                                ),
                                const SizedBox(height: 30),
                                CustomTextFormField(
                                  controller: c.noTelp,
                                  label: "No. Telp",
                                  hintText: "Masukan no telpon anda",
                                ),
                                const SizedBox(height: 30),
                                CustomTextFormField(
                                  controller: c.noKTP,
                                  label: "No. KTP",
                                  hintText: "Masukan no KTP anda",
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(CupertinoIcons.info_circle_fill, color: blueColor),
                                    const SizedBox(width: 12),
                                    Container(
                                      width: Get.width - 160,
                                      child: Text(
                                        "Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya",
                                        style: listSubTitleTextStyle,
                                      ),
                                    )
                                  ],
                                ),
                                const CustomFilledButton(
                                  color: blueColor,
                                  title: "Simpan Profile",
                                  leadingIcon: FontAwesomeIcons.floppyDisk,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 70),
                    decoration: const BoxDecoration(
                      color: blueColor,
                    ),
                    alignment: Alignment.center,
                    child: Stack(children: [
                      Image.asset(ImageConstant.bgBanner1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                            width: Get.width / 2,
                            child: Text(
                              "Ingin Mendapatkan Update dari kami? ",
                              style: appTitle.copyWith(color: whiteColor),
                            ),
                          ),
                          Container(
                              width: 110,
                              alignment: Alignment.centerRight,
                              // color: whiteColor,
                              child: Row(children: [
                                Text(
                                  "Dapatkan \nNotifikasi",
                                  style: listTitleTextStyle.copyWith(color: whiteColor),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: whiteColor,
                                )
                              ]))
                        ],
                      )
                    ]),
                  )
                ],
              ),
            ),
          );
        });
  }
}
