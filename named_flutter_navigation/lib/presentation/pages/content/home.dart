import 'package:flutter/material.dart';
import 'package:flutter_navigation/presentation/app.dart';

import '../../../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameArg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).popAndPushNamed(
                  LOGIN_ROUTE,
                );
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Hello ${nameArg}"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    DETAIL_ROUTE,
                  );
                },
                child: Text("Details")),
          ],
        ),
      ),
    );
  }
}
