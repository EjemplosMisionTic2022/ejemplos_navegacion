import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_getx_navigation/constants.dart';
import 'package:named_getx_navigation/ui/pages/authentication/signup.dart';
import 'package:named_getx_navigation/ui/pages/content/home.dart';
import 'pages/authentication/login.dart';
import 'pages/content/detail.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LOGIN_ROUTE,
      getPages: [
        GetPage(name: LOGIN_ROUTE, page: () => LoginScreen()),
        GetPage(name: SIGNUP_ROUTE, page: () => SignUpPage()),
        GetPage(name: DETAIL_ROUTE, page: () => DetailPage()),
        GetPage(
            name: HOME_ROUTE,
            page: () => HomePage(),
            transition: Transition.zoom),
      ],
    );
  }
}
