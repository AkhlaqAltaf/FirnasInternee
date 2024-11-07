import 'package:ecommerce_app/ui/login/widget/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Login "),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const LoginForm(),
    );
  }
}
