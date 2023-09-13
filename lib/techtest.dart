import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get/get.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/textstyle.dart';
import 'package:techtestvascomm/screens/auth/login/login_screen.dart';

class TechTest extends StatelessWidget {
  const TechTest({super.key});

  @override
  Widget build(BuildContext context) {
    String env = FlavorConfig.instance.name ?? "PROD";
    if (env == "DEV" || env == "STG") {
      return const FlavorBanner(
        location: BannerLocation.topEnd,
        child: App(),
      );
    }

    return const App();
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Get.deviceLocale,
      debugShowCheckedModeBanner: false,
      title: 'Tech Test',
      theme: ThemeData(
        // useMaterial3: true,
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: whiteColor,
          elevation: 0,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: whiteColor,
          labelStyle: hintTextStyle.copyWith(color: blackColor),
          hintStyle: hintTextStyle,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              8,
            ),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              minimumSize: const Size(100, 40),
              side: const BorderSide(color: infoColor),
              foregroundColor: infoColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              textStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(const Size(100, 40)),
              shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
              elevation: MaterialStateProperty.resolveWith<double>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) {
                    return 0;
                  }
                  return 0; // Defer to the widget's default.
                },
              ),
              textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontWeight: FontWeight.w700, fontSize: 16))),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
