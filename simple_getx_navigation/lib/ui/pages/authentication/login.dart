import 'package:flutter/material.dart';
import 'package:flutter_getx_navigation/ui/pages/content/home.dart';
import 'package:get/get.dart';

import 'signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Login Page (simple navigation with GetX)",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your user',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_textController.text.isEmpty) {
                        Get.snackbar('Error', 'Value can not be empty',
                            icon: Icon(Icons.alarm),
                            backgroundColor: Colors.red);
                      } else {
                        final name = _textController.text;
                        Get.off(() => HomePage(name: name));
                      }
                    },
                    child: Text("Login")),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() => SignUpPage());
                    },
                    child: Text("Create user"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
