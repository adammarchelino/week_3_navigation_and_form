import 'package:flutter/material.dart';
import 'succes_page.dart';

class PetunjukPage extends StatelessWidget {
  const PetunjukPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Petunjuk Rute',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF007AFF),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Area Ilustrasi Rute / Peta
            Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.alt_route_rounded,
                size: 80,
                color: Color(0xFF007AFF),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Ikuti jalur ini untuk\nmenuju Taman Kampus.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // Step 1
            _buildStepItem(
              number: '1',
              text: 'Dari gerbang utama, lurus 100 m.',
            ),
            const SizedBox(height: 10),
            // Step 2
            _buildStepItem(number: '2', text: 'Belok kanan di Gedung A.'),
            const SizedBox(height: 10),
            // Step 3
            _buildStepItem(
              number: '3',
              text: 'Taman Kampus ada di sebelah kiri.',
            ),

            const Spacer(),

            // Tombol Selesai
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF007AFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // PUSH REPLACEMENT: Mengganti halaman ini dengan SuccessPage
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SuccessPage(),
                    ),
                  );
                },
                child: const Text(
                  'Selesai',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepItem({required String number, required String text}) {
    return Row(
      children: [
        CircleAvatar(
          radius: 14,
          backgroundColor: const Color(0xFF007AFF),
          child: Text(
            number,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontSize: 13, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
