import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:named_getx_navigation/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Get.offNamed(LOGIN_ROUTE);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Hello ${name}"),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(DETAIL_ROUTE);
                },
                child: Text("Details")),
          ],
        ),
      ),
    );
  }
}
