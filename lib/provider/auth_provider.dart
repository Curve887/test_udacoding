import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  final form = GlobalKey<FormState>();

  var islogin = true;
  var enteredEmail = '';
  var enteredPassword = '';
  var enteredIDLibrary = '';
  var enteredNama = '';

  void submit() {
    final isvalid = form.currentState!.validate();

    if (!isvalid) {
      return;
    }
    form.currentState!.save();
  }
}
