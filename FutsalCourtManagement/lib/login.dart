// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  decoration: InputDecoration(
                      hintText: "Your Email",
                      prefixIcon: Icon(Icons.mail, color: Colors.black))),
              SizedBox(height: 18),
              TextField(
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
                      onPressed: () {},
                      child: Text("Login",
                          style: TextStyle(color: Colors.white, fontSize: 10))))
            ]),
      ),
    );
  }
}
