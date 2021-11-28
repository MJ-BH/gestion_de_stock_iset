import 'package:flutter/material.dart';
import 'package:gestion_de_stock/app/ui/pages/home_page/home_page.dart';
import 'package:gestion_de_stock/app/ui/pages/login_page/login_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

import 'app/ui/pages/ajout_famille/ajout_famille.dart';

void main() async {
  await GetStorage.init();
  //bool session = GetStorage().read("logged");
  //print(session.toString());

  runApp(GetMaterialApp(
    locale: Get.deviceLocale,
    defaultTransition: Transition.zoom,
    transitionDuration: const Duration(milliseconds: 1500),
    title: "GESTION DE STOCK",
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => HomePage()),
      GetPage(name: '/login', page: () => const LoginPage()),
      GetPage(name: '/ajout', page: () => Ajout())
    ],
  ));
}
