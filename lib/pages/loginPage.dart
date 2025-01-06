import 'package:flutter/material.dart';
import 'package:poorneshapp/pages/homePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor:
          Colors.lightBlueAccent, // Lighter and brighter blue background
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the container
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header text with a bit of styling
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text for contrast
                ),
              ),
              SizedBox(height: 40), // Increased spacer between elements

              // Input fields with padding and borders
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.white60),
                  filled: true,
                  fillColor:
                      Colors.white.withOpacity(0.2), // Lighter fill color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                style:
                    TextStyle(color: Colors.white), // Text color inside input
              ),
              SizedBox(height: 20), // Spacer between fields

              TextField(
                obscureText: true, // Password field should obscure text
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.white),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white60),
                  filled: true,
                  fillColor:
                      Colors.white.withOpacity(0.2), // Lighter fill color
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20), // Spacer between fields

              // Login button with styling
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue, // Bright blue for the button
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      )),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), // Spacer between button and other elements

              // Optional: Forgot password text
              TextButton(
                onPressed: () {
                  // Forgot password action can be added here
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
