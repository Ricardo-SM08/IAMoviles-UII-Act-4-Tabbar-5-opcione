import 'package:flutter/material.dart';

class CarrosTab extends StatelessWidget {
  const CarrosTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Catálogo de Autos",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFF4A148C)),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: const Color(0xFFE040FB).withAlpha(80), blurRadius: 15, spreadRadius: 2)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                // Reemplaza este link por tu URL de GitHub
                child: Image.network(
                  "https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/mustang.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Descubre el auto de tus sueños con la mejor financiación.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}