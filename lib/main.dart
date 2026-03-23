import 'package:flutter/material.dart';
import 'mis_paginas_tab/pantalla_tabs.dart';
import 'mis_paginas_tab/empleados_tab.dart';
import 'mis_paginas_tab/clientes_tab.dart';
import 'mis_paginas_tab/articulos_tab.dart';
import 'mis_paginas_tab/refacciones_tab.dart';
import 'mis_paginas_tab/carros_tab.dart';

void main() => runApp(const MySelfCarApp());

class MySelfCarApp extends StatelessWidget {
  const MySelfCarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MySelfCar',
      theme: ThemeData(
        primaryColor: const Color(0xFF9C27B0), // Morado Principal
        scaffoldBackgroundColor: Colors.white,
      ),
      // Ruta inicial que carga el TabBar
      initialRoute: '/',
      // Rutas nombradas
      routes: {
        '/': (context) => const PantallaTabs(),
        '/empleados': (context) => const EmpleadosTab(),
        '/clientes': (context) => const ClientesTab(),
        '/articulos': (context) => const ArticulosTab(),
        '/refacciones': (context) => const RefaccionesTab(),
        '/carros': (context) => const CarrosTab(),
      },
    );
  }
}