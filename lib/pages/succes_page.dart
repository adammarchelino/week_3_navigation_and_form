import 'package:flutter/material.dart';
import 'home_page.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ini Halaman Succes')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('SUKSES DATA DISIMPAN', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: const Text('EXIT'),
            ),
          ],
        ),
      ),
    );
  }
}
