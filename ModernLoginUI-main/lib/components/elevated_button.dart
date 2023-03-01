import 'package:flutter/material.dart';

class ElevatedButton extends StatelessWidget {
  final Function()? onTap;

  const ElevatedButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(22),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 31, 224, 79),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            "Iniciar sesión",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}