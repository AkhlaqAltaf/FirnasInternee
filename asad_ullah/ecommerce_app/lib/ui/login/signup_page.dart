import 'package:ecommerce_app/ui/login/widget/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text('Sign Up'),
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body:const SignUpForm()
    );
  }
}
