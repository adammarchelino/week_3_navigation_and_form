import 'package:flutter/material.dart';
import 'petunjuk_page.dart';

class DetailWisata extends StatelessWidget {
  const DetailWisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Lokasi',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF007AFF),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context), // Kembali ke HomePage
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar Taman Kampus
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 180,
                width: double.infinity,
                color: Colors.green.shade100,
                child: const Icon(Icons.park, size: 90, color: Colors.green),
              ),
            ),
            const SizedBox(height: 20),

            // Judul dan Lokasi
            const Text(
              'Taman Kampus',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            Row(
              children: const [
                Icon(Icons.location_on, size: 18, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  'Area Utara',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Deskripsi
            const Text(
              'Taman yang nyaman untuk bersantai, berdiskusi, atau mengerjakan tugas.',
              style: TextStyle(color: Colors.black, height: 1.4),
            ),
            const Spacer(),

            // Tombol Lihat Rute
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
                  // NAVIGASI PUSH KE PETUNJUK PAGE
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PetunjukPage(),
                    ),
                  );
                },
                child: const Text(
                  'Lihat Rute',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Tombol Kembali
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Color(0xFF007AFF)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // NAVIGASI POP KEMBALI
                  Navigator.pop(context);
                },
                child: const Text(
                  'Kembali',
                  style: TextStyle(
                    color: Color(0xFF007AFF),
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
}
