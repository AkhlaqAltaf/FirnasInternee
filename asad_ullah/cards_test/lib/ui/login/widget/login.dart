import 'package:flutter/material.dart';

import '../../product_list_pages/product_list.dart';
import '../signup.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _formKey =  GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: const EdgeInsets.all(16.0),
      child: Form(
        child: ListView(
          children: <Widget>[
          const SizedBox(height: 30),
          //  Login Profile Icon
          const CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 100,
            child: Icon(
              Icons.person,
              size: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30,),
            const Center(
              child: Text('Login',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                ),
              ),
            ),
          const SizedBox(height: 30),
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
          TextFormField(
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            obscureText: true, // To hide the password
          ),


          const SizedBox(height: 40),
          OutlinedButton(onPressed: onLoginButtonPressed,
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              foregroundColor: Colors.white,
            ),
            child: const Text('Login',
              style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Row(
            children: [
              const Text("If you don't have an Account, Sign Up:"),
              const SizedBox(width: 0), // Add horizontal spacing between text and button
              InkWell(
                onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                );
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


  void onLoginButtonPressed () {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("Login Successfully");
    }
    else {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ProductListPage()),
      );
    }
  }

  String? _validateEmail(String? value) {
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    if (value == null || value.isEmpty) {
      return "Enter the email";
    }
    else if (!emailRegex.hasMatch(value)) {
      return 'Enter valid email Address';
    }
    else {
      return null;
    }
  }
}
