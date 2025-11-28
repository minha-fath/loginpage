import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text(
              "welcome",
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(child: SizedBox(height: 10)),
            Image.network(
              "https://cdni.iconscout.com/illustration/premium/thumb/welcome-page-8693993-6983282.png",
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 55,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("sign up"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 93, 98, 228),
                  foregroundColor: Colors.black,side: BorderSide(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
