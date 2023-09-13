import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:techtestvascomm/binding/global_binding.dart';
import 'package:techtestvascomm/techtest.dart';
import 'package:techtestvascomm/config/env.dart';

void main() {
  FlavorConfig(
      name: "PROD",
      location: BannerLocation.topEnd,
      variables: prodEnvironment
  );


  WidgetsFlutterBinding.ensureInitialized();
  GlobalBinding().dependencies();

  runApp(const TechTest());
}

