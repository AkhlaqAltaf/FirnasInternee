import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey, // Assign the _formKey to the Form widget
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20),
            // SignUp Page Icon
            const CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 100,
              child: Icon(
                Icons.person,
                size: 120,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'SignUp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              validator: validateName,
              decoration: InputDecoration(
                labelText: "First Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              validator: validateName,
              decoration: InputDecoration(
                labelText: "Last Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              validator: validateEmail,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              validator: validatePassword,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              obscureText: true, // Secures the password
            ),
            const SizedBox(height: 40),
            OutlinedButton(
              onPressed: onSignupButtonPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
              ),
              child: const Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Row(
              children: [
                const Text("If you already have an Account, Login:"),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginpage');
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18,
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

  void onSignupButtonPressed() {
    if (_formKey.currentState!.validate()) {
      // Navigate to the Product List Page if the form is valid
      Navigator.pushNamed(context, '/productlistpage');
      print("SignUp Successfully");
    } else {
      print("Form is not valid");
    }
  }

  // Email Validator
  String? validateEmail(String? value) {
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
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter the password";
    } else if (value.length < 8) {
      return "Password must be at least 8 characters";
    } else {
      return null;
    }
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Fill the field mandatory';
    } else {
      return null;
    }
  }
}
