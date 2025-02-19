import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const List<String> dataNama = ["Putri Aulia Maulida", "Fauzia Nurafni", "Reiza Maulidia"];

  static const List<String> dataSubtitle = ["Mahasiswi Teknik Informatika", "Mahasiswi Teknik Mesin", "Mahasiswi Teknik Industri"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menampilkan Data Dinamis')),
      body: ListView.builder(
        itemCount: dataNama.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(dataNama[index]),
            subtitle: Text(dataSubtitle[index]),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
      ),
    );
  }
}
