import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CrearPerfilScreen extends StatefulWidget {
  const CrearPerfilScreen({super.key});

  @override
  State<CrearPerfilScreen> createState() => _CrearPerfilScreenState();
}

class _CrearPerfilScreenState extends State<CrearPerfilScreen> {
  final _nombreController = TextEditingController();
  final _edadController = TextEditingController();
  final _ocupacionController = TextEditingController();

  @override
  void dispose() {
    _nombreController.dispose();
    _edadController.dispose();
    _ocupacionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        title: const Text(
          'Crear Perfil',
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              // Campo de nombre
              _buildTextField(
                controller: _nombreController,
                labelText: 'Nombre',
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              // Campo de edad
              _buildTextField(
                controller: _edadController,
                labelText: 'Edad',
                icon: Icons.cake,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              // Campo de ocupación
              _buildTextField(
                controller: _ocupacionController,
                labelText: 'Ocupación',
                icon: Icons.work,
              ),
              const SizedBox(height: 32),
              // Botón de guardar
              ElevatedButton(
                onPressed: () {
                  final datosUsuario = {
                    'nombre': _nombreController.text,
                    'edad': _edadController.text,
                    'ocupacion': _ocupacionController.text,
                  };
                  context.push('/ver-perfil', extra: datosUsuario);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 5,
                ),
                child: const Text(
                  'Guardar y Ver Perfil',
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
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.white70),
        filled: true,
        fillColor: Colors.white24,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
