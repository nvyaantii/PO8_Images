import 'package:flutter/material.dart';

void main() {
  runApp(const VisiMisiApp());
}

class VisiMisiApp extends StatelessWidget {
  const VisiMisiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Visi Misi Prodi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'JosefinSans',
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const VisiMisiPage(),
    );
  }
}

class VisiMisiPage extends StatelessWidget {
  const VisiMisiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visi dan Misi Prodi RPL'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sectionTitle('Visi'),
              const SizedBox(height: 8),
              sectionText(
                'Prodi D4 Rekayasa Perangkat Lunak yang telah ditetapkan oleh Direktur '
                'Politeknik Negeri Bengkalis melalui surat keputusan No. 206/PL31/TU/2016 adalah:\n\n'
                '"Menjadi Program Studi vokasi yang menghasilkan lulusan bidang rekayasa perangkat lunak '
                'berstandar Nasional dan menuju reputasi Internasional pada tahun 2020".',
              ),
              const SizedBox(height: 24),
              sectionTitle('Misi'),
              const SizedBox(height: 8),
              sectionText(
                'Misi Program Studi Sarjana Terapan Rekayasa Perangkat Lunak adalah:\n\n'
                '1. Menyelenggarakan pendidikan dan meningkatkan kemampuan mahasiswa dalam '
                'menerapkan Ilmu Pengetahuan dan Teknologi Rekayasa Perangkat Lunak bidang Rekayasa '
                'web dan Aplikasi mobile untuk meningkatkan daya saing untuk menghasilkan produk yang unggul.\n\n'
                '2. Menciptakan, mengembangkan dan menerapkan ilmu pengetahuan dan teknologi, '
                'membangun produk unggulan rekayasa perangkat lunak.\n\n'
                '3. Meningkatkan dan memperkuat kolaborasi unggulan dalam mengatasi permasalahan '
                'pembangunan di lingkungan internal maupun lingkungan eksternal (industri, pemerintahan dan masyarakat umum).\n\n'
                '4. Melaksanakan dan mengembangkan desain dan jejaring kerjasama bidang rekayasa perangkat '
                'lunak yang berkelanjutan dengan institusi dalam dan luar negeri.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.green,
      ),
    );
  }

  Widget sectionText(String text) {
    return Text(text, style: const TextStyle(fontSize: 16, height: 1.5));
  }
}
