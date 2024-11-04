import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerPerfilScreen extends StatelessWidget {
  final Map<String, String> datos;

  const VerPerfilScreen({
    super.key,
    required this.datos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        title: const Text(
          'Perfil',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.indigo],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Tarjeta de perfil
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Nombre
                      Text(
                        'Nombre: ${datos['nombre']}',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Edad
                      Text(
                        'Edad: ${datos['edad']} años',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 16),
                      // Ocupación
                      Text(
                        'Ocupación: ${datos['ocupacion']}',
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Botón de regresar
                ElevatedButton(
                  onPressed: () {
                    context.go('/');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Regresar a Inicio',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
