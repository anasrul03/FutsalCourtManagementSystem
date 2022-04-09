// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Courtify",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              Text("Login first before make a bookings"),
              SizedBox(height: 18),
              TextField(
                controller: emailController,
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: Icon(Icons.mail, color: Colors.black))),
              SizedBox(height: 18),
              TextField(
                controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Your password",
                      prefixIcon: Icon(Icons.lock, color: Colors.black))),
              SizedBox(height: 40),
              Container(
                  width: double.infinity,
                  child: RawMaterialButton(
                      fillColor: Colors.blue,
                      elevation: 0.0,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      onPressed: (){},
                      child: Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 10))))
            ]),
      ),
    );
  }

  Future sigIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }
}
