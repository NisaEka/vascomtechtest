import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/image_constant.dart';
import 'package:techtestvascomm/const/textstyle.dart';
import 'package:techtestvascomm/reusable/form/customfilledbutton.dart';
import 'package:techtestvascomm/reusable/sidebar.dart';
import 'package:techtestvascomm/reusable/topbar.dart';
import 'package:techtestvascomm/screens/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (c) {
          return Scaffold(
            appBar: const TopBar(),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          gradient: const LinearGradient(colors: [Colors.white, Color(0xffDAE9F9)]),
                          boxShadow: [
                            BoxShadow(
                              color: greyColor.withOpacity(0.24),
                              blurRadius: 24,
                              offset: const Offset(5, 16), // Shadow position
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 54),
                        padding: const EdgeInsets.all(16),
                        alignment: Alignment.topLeft,
                        width: Get.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: const TextSpan(
                                text: "Solusi, ",
                                style: TextStyle(fontSize: 18, color: blueColor),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "Kesehatan anda",
                                    style: TextStyle(fontSize: 18, color: blueColor, fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: "\n\nUpdate informasi seputar kesehatan \nsemua bisa disini",
                                    style: TextStyle(fontSize: 12, color: greyColor),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const CustomFilledButton(color: blueColor, title: "Selengkapnya", width: 120),
                                Container(
                                  padding: const EdgeInsets.only(top: 30),
                                  alignment: Alignment.bottomRight,
                                  width: 70,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 8,
                                        width: 40,
                                        decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(20)),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(20)),
                                      ),
                                      Container(
                                        height: 8,
                                        width: 8,
                                        decoration: BoxDecoration(color: whiteColor, borderRadius: BorderRadius.circular(20)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(right: 10, child: Image.asset(ImageConstant.calendar)),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: greyColor.withOpacity(0.24),
                              blurRadius: 24,
                              offset: const Offset(5, 16), // Shadow position
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 54),
                        padding: const EdgeInsets.all(16),
                        alignment: Alignment.topLeft,
                        width: Get.width,
                        child: RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Layanan Khusus ",
                                style: TextStyle(fontSize: 18, color: blueColor, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "\n\nTest Cofid 19, Cegah Corona \nSedini Mungkin",
                                style: TextStyle(fontSize: 12, color: greyColor),
                              ),
                              TextSpan(
                                text: "\n\nDaftar Tes ",
                                style: TextStyle(fontSize: 14, color: blueColor, fontWeight: FontWeight.bold),
                                children: <WidgetSpan>[
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward_outlined,
                                      color: blueColor,
                                      size: 16,
                                      weight: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(top: 10, right: 30, child: Image.asset(ImageConstant.med)),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: greyColor.withOpacity(0.24),
                              blurRadius: 24,
                              offset: const Offset(5, 16), // Shadow position
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 54),
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 50),
                        alignment: Alignment.centerRight,
                        width: Get.width,
                        child: RichText(
                          text: const TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Track Pemeriksaan ",
                                style: TextStyle(fontSize: 18, color: blueColor, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "\n\nTest Cofid 19, Cegah Corona \nSedini Mungkin",
                                style: TextStyle(fontSize: 12, color: greyColor),
                              ),
                              TextSpan(
                                text: "\n\nTrack ",
                                style: TextStyle(fontSize: 14, color: blueColor, fontWeight: FontWeight.bold),
                                children: <WidgetSpan>[
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.arrow_forward_outlined,
                                      color: blueColor,
                                      size: 16,
                                      weight: 10,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Image.asset(ImageConstant.search, height: 150)
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.slider_horizontal_3,
                            color: blueColor,
                          ),
                        ),
                        Container(
                          width: Get.width / 1.4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: greyColor.withOpacity(0.21),
                                blurRadius: 30,
                                offset: const Offset(0, 16), // Shadow position
                              ),
                            ],
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                              hintText: "Search",
                              hintStyle: hintTextStyle,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                borderSide: BorderSide.none,
                              ),
                              suffixIcon: const Icon(
                                CupertinoIcons.search,
                                color: blueColor,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          CustomFilledButton(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: blueColor,
                            radius: 30,
                            title: "All Product",
                            width: 120,
                          ),
                          CustomFilledButton(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: whiteColor,
                            fontColor: blueColor,
                            radius: 30,
                            title: "Layanan Kesehatan",
                            width: 160,
                          ),
                          CustomFilledButton(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: whiteColor,
                            fontColor: blueColor,
                            radius: 30,
                            title: "Alat Kesehatan",
                            width: 160,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Card(
                              elevation: 1,
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      // alignment: Alignment.center,
                                      child: Image.asset(
                                        ImageConstant.product,
                                        height: 150,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(top: 5),
                                      child: Text("Suntik Steril", style: listTitleTextStyle),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Rp. 10.000", style: listTitleTextStyle.copyWith(color: orangeColor)),
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: lightBlueColor,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Text(
                                            "Ready Stock",
                                            style: TextStyle(color: greenColor),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 15,
                              top: 10,
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    "5",
                                    style: TextStyle(fontSize: 16, color: greyColor, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Card(
                              elevation: 1,
                              child: Container(
                                margin: const EdgeInsets.all(20),
                                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      // alignment: Alignment.center,
                                      child: Image.asset(
                                        ImageConstant.product,
                                        height: 150,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin: const EdgeInsets.only(top: 5),
                                      child: Text("Suntik Steril", style: listTitleTextStyle),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("Rp. 10.000", style: listTitleTextStyle.copyWith(color: orangeColor)),
                                        Container(
                                          padding: const EdgeInsets.all(5),
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: lightBlueColor,
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          child: const Text(
                                            "Ready Stock",
                                            style: TextStyle(color: greenColor),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const Positioned(
                              right: 15,
                              top: 10,
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    "5",
                                    style: TextStyle(fontSize: 16, color: greyColor, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.all(20),
                    child: Text(
                      "Pilih Tipe Layanan Kesehatan Anda",
                      style: appTitle,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 16),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: 270,
                    alignment: Alignment.centerLeft,
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
                          title: "Satuan",
                          width: 100,
                          fontColor: blueColor,
                          radius: 30,
                          margin: EdgeInsets.all(0),
                        ),
                        CustomFilledButton(
                          color: whiteColor,
                          title: "Paket Pemeriksaan",
                          width: 150,
                          fontColor: blueColor,
                          radius: 30,
                          margin: EdgeInsets.all(0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.24),
                            blurRadius: 24,
                            offset: const Offset(5, 16), // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PCR Swab Test (Drive Thru) \nHasil 1 Hari Kerja", style: listTitleTextStyle),
                            const SizedBox(height: 15),
                            Text("Rp. 1.400.000", style: listTitleTextStyle.copyWith(color: orangeColor)),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Icon(CupertinoIcons.building_2_fill, color: blueColor),
                                Text(
                                  "  Lenmarc Surabaya",
                                  style: listTitleTextStyle.copyWith(color: greyColor),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_rounded, color: blueColor),
                                Text(
                                  "  Dukuh Pakis, Surabaya",
                                  style: listSubTitleTextStyle.copyWith(color: lightGreyColor),
                                )
                              ],
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(ImageConstant.building1, fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.24),
                            blurRadius: 24,
                            offset: const Offset(5, 16), // Shadow position
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("PCR Swab Test (Drive Thru) \nHasil 1 Hari Kerja", style: listTitleTextStyle),
                            const SizedBox(height: 15),
                            Text("Rp. 1.400.000", style: listTitleTextStyle.copyWith(color: orangeColor)),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Icon(
                                  CupertinoIcons.building_2_fill,
                                  color: blueColor,
                                ),
                                Text(
                                  "  Lenmarc Surabaya",
                                  style: listTitleTextStyle.copyWith(color: greyColor),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on_rounded, color: blueColor),
                                Text(
                                  "  Dukuh Pakis, Surabaya",
                                  style: listSubTitleTextStyle.copyWith(color: lightGreyColor),
                                )
                              ],
                            ),
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(ImageConstant.building2, fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CupertinoActivityIndicator(color: greyColor),
                        Text(
                          "  Tampilkan Lebih Banyak",
                          style: listSubTitleTextStyle.copyWith(color: greyColor),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: blueColor,
                    ),
                    alignment: Alignment.center,
                    child: Stack(children: [
                      Image.asset(ImageConstant.bgBanner1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
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
                                Icon(
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
            endDrawer: SideBar(),
            drawerScrimColor: blueColor.withOpacity(0.7),
            endDrawerEnableOpenDragGesture: false,
          );
        });
  }
}
