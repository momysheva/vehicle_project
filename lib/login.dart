import 'package:flutter/material.dart';
import 'admin_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userIdController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      backgroundColor: Color.fromARGB(255, 129, 53, 48),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _userIdController,
              decoration: InputDecoration(labelText: "User"),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Validate user ID and password
                String userId = _userIdController.text;
                String password = _passwordController.text;

                if (userId == 'aliza' && password == '1234') {
                  // Navigate to the home page or perform desired action
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminPage()),
            );
                  print('Login successful!');
                } else {
                  // Show an error message or perform any other action
                  print('Invalid credentials. Please try again.');
                }
              },
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 129, 53, 48))),
              child: Text('Login'),
            ),  
          ],
        ),
      ),
    );
  }
}
