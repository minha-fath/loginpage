import 'package:flutter/material.dart';
import 'package:loginpage/service.dart';

class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text(
              "sign up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Login to your account,it's free",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(height: 15, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Username",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15, width: double.infinity),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Confirm Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  register(
                    uname: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    confirmPassword: confirmPasswordController.text,
                    context: context,
                  );
                },
                child: Text("sign up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 93, 98, 228),
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Already have an account? Login",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
