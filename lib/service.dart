import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> register({
  required String uname,
  required String email,
  required String password,
  required String confirmPassword,
  required BuildContext context,
}) async {
  try {

UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User Registered Successfully")));

  } catch (e) {

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.toString())),
    );
  }
}Future<void> login({
  required String email,
  required String password,
  required BuildContext context,
}) async {
  try {
  await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User Logged In Successfully")));

  } catch (e) {

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.toString())),
    );
  }
}
Future<void> resetPassword({
  required String email,
  required BuildContext context,
}) async {
  try {
  await FirebaseAuth.instance
        .sendPasswordResetEmail(email: email);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Password Reset Email Sent")));

  } catch (e) {

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(e.toString())),
    );
  }
}