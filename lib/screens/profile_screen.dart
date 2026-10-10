import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const AboutScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const ProfileHeader(
                      name: 'Bayu Kurniawan',
                      nim: '25.11.6574',
                    ),
                    const SizedBox(height: 16),
                    const ProfileInfo(
                      name: '',
                      nim: '',
                      programStudi: 'S1 Informatika',
                      email:
                          'b.kurniawan@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Media Sosial',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SocialMediaRow(),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: Center(
                child: SingleChildScrollView(
                  child: ActionButtons(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}