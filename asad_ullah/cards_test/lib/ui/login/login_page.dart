import 'package:cards_test/ui/login/signup.dart';
import 'package:cards_test/ui/login/widget/login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text("User Login "),
        // backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const LoginForm(),
    );


  }



  // void onSavedContactButtonPressed (){
  //   if (_formKey.currentState!.validate()){
  //     _formKey.currentState!.save();
  //
  //     final newOrEditedContact =  Contact (
  //       name :_name,
  //       number :_phoneNumber,
  //       is_favorite: widget.editedContact?.is_favorite?? false ,
  //     );
  //     if (isEditMode){
  //       ScopedModel.of<ContactsModel>(context).updateContact(newOrEditedContact,widget.editedContactIndex);
  //     }
  //     else{
  //       ScopedModel.of<ContactsModel>(context).addContact(newOrEditedContact);
  //     }
  //     Navigator.of(context).pop();
  //   }
  // }
}
