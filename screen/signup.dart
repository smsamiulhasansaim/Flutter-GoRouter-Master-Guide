import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => context.pop(), // ১. আগের পেজে ফিরে যাওয়ার জন্য
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Sign up to get started!', style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 40),

            // Name Field
            _buildTextField(_nameController, 'Full Name', Icons.person_outline),
            const SizedBox(height: 20),

            // Email Field
            _buildTextField(_emailController, 'Email', Icons.email_outlined),
            const SizedBox(height: 20),

            // Password Field
            _buildTextField(_passwordController, 'Password', Icons.lock_outline, isPassword: true),
            const SizedBox(height: 30),

            // Signup Button
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String label, IconData icon, {bool isPassword = false}) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}