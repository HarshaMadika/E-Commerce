import 'package:flutter/material.dart';
import 'package:poorneshapp/pages/loginPage.dart';
import 'package:poorneshapp/pages/signupPage.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, // Lighter blue background
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding for spacing
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title or App name
              Text(
                "Welcome to Our App!",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40), // Spacer between title and buttons

              // Description or welcome message (optional)
              Text(
                "Please choose an option to get started",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70, // Light grey text
                ),
              ),
              SizedBox(height: 50), // Spacer between description and buttons

              // Login Button
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue, // Bright blue for the button
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigate to Login page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
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
              SizedBox(height: 20), // Spacer between buttons

              // Sign Up Button
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color:
                      Colors.blueAccent, // Slightly lighter blue for contrast
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextButton(
                  onPressed: () {
                    // Navigate to Sign Up page
                    // Replace with actual SignUpPage() when it's ready
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Signinpage()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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

// Placeholder SignUpPage class (you can replace it with your actual sign-up page later)
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Center(child: Text("Sign Up Page")),
    );
  }
}
