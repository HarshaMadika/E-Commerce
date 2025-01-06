import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Placeholder image URL
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Name and Basic Info
              Text(
                "John Doe",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "johndoe@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 5),
              Text(
                "+1 123 456 7890",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 20),

              // Divider
              Divider(
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              SizedBox(height: 20),

              // Account Details Section
              ProfileMenuItem(
                icon: Icons.person,
                text: "Personal Information",
                onTap: () {
                  // Navigate to personal info
                },
              ),
              ProfileMenuItem(
                icon: Icons.lock,
                text: "Change Password",
                onTap: () {
                  // Change password
                },
              ),
              ProfileMenuItem(
                icon: Icons.history,
                text: "Order History",
                onTap: () {
                  // View order history
                },
              ),
              ProfileMenuItem(
                icon: Icons.notifications,
                text: "Notifications",
                onTap: () {
                  // Notifications
                },
              ),
              ProfileMenuItem(
                icon: Icons.payment,
                text: "Payment Methods",
                onTap: () {
                  // Payment methods
                },
              ),
              SizedBox(height: 20),

              // Logout Button
              ElevatedButton(
                onPressed: () {
                  // Handle logout
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Custom Widget for Profile Menu Items
class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const ProfileMenuItem({
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.blueAccent),
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
          ],
        ),
      ),
    );
  }
}
