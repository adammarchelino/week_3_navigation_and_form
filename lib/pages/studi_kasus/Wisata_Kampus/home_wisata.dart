import 'package:flutter/material.dart';
import 'detail_wisata.dart';

class HomeWisata extends StatelessWidget {
  const HomeWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wisata Kampus',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF007AFF),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Banner / Gambar Ilustrasi Kampus
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.location_city_rounded,
                size: 80,
                color: Color(0xFF007AFF),
              ),
            ),
            const SizedBox(height: 20),

            // Teks Selamat Datang
            const Text(
              'Selamat Datang!',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Temukan tempat menarik\ndi kampus kami.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Menu List Tempat
            _buildMenuItem(
              context: context,
              icon: Icons.park,
              iconColor: Colors.green,
              title: 'Taman Kampus',
              onTap: () {
                // NAVIGASI PUSH KE DETAIL WISATA
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailWisata()),
                );
              },
            ),
            const SizedBox(height: 12),
            _buildMenuItem(
              context: context,
              icon: Icons.account_balance,
              iconColor: Colors.brown,
              title: 'Perpustakaan',
              onTap: () {},
            ),
            const SizedBox(height: 12),
            _buildMenuItem(
              context: context,
              icon: Icons.groups,
              iconColor: Colors.blue,
              title: 'Laboratorium',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  // Widget bantuan untuk item daftar
  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: iconColor, size: 28),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
