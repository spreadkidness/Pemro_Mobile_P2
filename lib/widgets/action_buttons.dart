import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Tombol Edit diklik'),
              ),
            );
          },
          icon: const Icon(Icons.edit),
          label: const Text('Edit'),
        ),
        ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Tombol Bagikan diklik'),
              ),
            );
          },
          icon: const Icon(Icons.share),
          label: const Text('Bagikan'),
        ),
      ],
    );
  }
}