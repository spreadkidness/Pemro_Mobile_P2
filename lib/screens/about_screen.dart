import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  void tampilkanPesan(
    BuildContext context,
    String nama,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Anda memilih $nama'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.pink,
          ),
          onPressed: () =>
              tampilkanPesan(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(
            Icons.business,
            color: Colors.blue,
          ),
          onPressed: () =>
              tampilkanPesan(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(
            Icons.code,
            color: Colors.black,
          ),
          onPressed: () =>
              tampilkanPesan(context, 'GitHub'),
        ),
      ],
    );
  }
}