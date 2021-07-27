import 'package:flutter/material.dart';
import 'package:flutter_navigation/constants.dart';

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
                  "Login Page with Flutter named navigation",
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
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.red,
                            content: Text('Value can not be empty')));
                      } else {
                        final name = _textController.text;
                        Navigator.of(context).popAndPushNamed(
                          HOME_ROUTE,
                          arguments: name,
                        );
                      }
                    },
                    child: Text("Login")),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        SIGNUP_ROUTE,
                      );
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
