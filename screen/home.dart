import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Next Reel Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(radius: 30, backgroundColor: Colors.white, child: Icon(Icons.person)),
                  SizedBox(height: 10),
                  Text('Samiul Dev', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.redAccent),
              title: const Text('Logout', style: TextStyle(color: Colors.redAccent)),
              onTap: () => context.go('/'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildStatCard("Projects", "12", Icons.rocket, Colors.blue),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withValues(alpha: 0.1),
              spreadRadius: 2,
              blurRadius: 5
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 30, color: color),
          Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(title),
        ],
      ),
    );
  }
}