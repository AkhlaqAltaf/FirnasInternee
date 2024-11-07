import 'package:flutter/material.dart';

import '../../product_list_pages/product_list.dart';
import '../signup_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey, // Set the form key
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 30),
            // Login Profile Icon
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 100,
              child: Icon(
                Icons.person,
                size: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Email Field with Validation
            TextFormField(
              validator: _validateEmail,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Password Field with Validation
            TextFormField(
              validator: _validatePassword,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true, // To hide the password
            ),

            const SizedBox(height: 40),

            // Login Button with Form Validation Check
            OutlinedButton(
              onPressed: _onLoginButtonPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Row(
              children: [
                const Text("If you don't have an Account, Sign Up:"),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Login Button Function
  void _onLoginButtonPressed() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, navigate to the Product List Page
      Navigator.pushNamed(context, '/');
      print("Login Successfully");
    } else {
      print("Form is not valid");
    }
  }

  // Email Validator
  String? _validateEmail(String? value) {
    final emailRegex =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (value == null || value.isEmpty) {
      return "Enter the email";
    } else if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  // Password Validator
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter the password";
    } else if (value.length < 8) {
      return "Password must be at least 8 characters";
    } else {
      return null;
    }
  }
}
