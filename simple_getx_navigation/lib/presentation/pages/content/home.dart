import 'package:flutter/material.dart';
import 'package:flutter_getx_navigation/presentation/pages/authentication/login.dart';
import 'package:get/get.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Get.off(LoginScreen());
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
                  Get.to(DetailPage());
                },
                child: Text("Details")),
          ],
        ),
      ),
    );
  }
}
