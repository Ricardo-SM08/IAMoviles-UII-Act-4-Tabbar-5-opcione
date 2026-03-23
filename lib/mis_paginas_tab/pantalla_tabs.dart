import 'package:flutter/material.dart';
import 'empleados_tab.dart';
import 'clientes_tab.dart';
import 'articulos_tab.dart';
import 'refacciones_tab.dart';
import 'carros_tab.dart';

class PantallaTabs extends StatelessWidget {
  const PantallaTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // 5 Opciones según tus instrucciones
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFDCD0FF), // Lila
          title: const Text(
            'MySelfCar',
            style: TextStyle(
              color: Color(0xFF4A148C), // Morado Oscuro
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'cursive', 
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        // Aquí cargamos los 5 archivos independientes
        body: const TabBarView(
          children: [
            EmpleadosTab(),
            ClientesTab(),
            ArticulosTab(),
            RefaccionesTab(),
            CarrosTab(),
          ],
        ),
        // TABBAR INFERIOR
        bottomNavigationBar: Container(
          color: const Color(0xFF4A148C), // Morado Oscuro para la barra inferior
          child: const TabBar(
            indicatorColor: Color(0xFFE040FB), // Magenta Neon al seleccionar
            indicatorWeight: 4.0,
            labelColor: Color(0xFFE040FB), // Texto brillante al seleccionar
            unselectedLabelColor: Colors.white70, // Blanco opaco si no está seleccionado
            labelStyle: TextStyle(fontSize: 10), // Letra pequeña para que quepan los 5
            tabs: [
              Tab(icon: Icon(Icons.badge), text: 'Empleados'),
              Tab(icon: Icon(Icons.people), text: 'Clientes'),
              Tab(icon: Icon(Icons.local_mall), text: 'Artículos'),
              Tab(icon: Icon(Icons.build), text: 'Refacciones'),
              Tab(icon: Icon(Icons.directions_car), text: 'Carros'),
            ],
          ),
        ),
      ),
    );
  }
}