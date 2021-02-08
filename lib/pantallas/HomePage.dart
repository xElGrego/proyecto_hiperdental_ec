import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'package:hiperdental_ec/controlers/bottonNavBar_Controller.dart';

import 'package:hiperdental_ec/pantallas/profilePage.dart';
import 'package:hiperdental_ec/pantallas/settingPage.dart';
import 'package:hiperdental_ec/pantallas/swiperPage.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(BottonNavController());

  final List<Widget> listWidget = [
    SwiperPage(),
    ProfilePage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      body: Obx(() => listWidget.elementAt(controller.selectIndex)),
      bottomNavigationBar: Obx(() {
        return myBottonNavBar(context);
      }),
    );
  }

  myBottonNavBar(context) {
    return BottomNavigationBar(
      currentIndex: controller.selectIndex,
      onTap: (index) => controller.selectIndex = index,
      elevation: 5,
      unselectedItemColor: Colors.grey,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      items: [
        BottomNavigationBarItem(
          label: 'Inicio',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Perfil',
          icon: Icon(Icons.tag_faces_sharp),
        ),
        BottomNavigationBarItem(
          label: 'Opciones',
          icon: Icon(Icons.settings),
        ),
      ],
    );
  }
}
