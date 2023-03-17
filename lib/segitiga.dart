import 'dart:math';
import 'package:flutter/material.dart';

class Segitiga extends StatefulWidget {
  const Segitiga({super.key});

  @override
  State<Segitiga> createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  String _message = "";

  final TextEditingController _sisi1Cont = TextEditingController();
  final TextEditingController _sisi2Cont = TextEditingController();
  final TextEditingController _sisi3Cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Segitiga",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _sisi1Cont,
                decoration: const InputDecoration(
                  labelText: 'Sisi 1',
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _sisi2Cont,
                decoration: const InputDecoration(
                  labelText: 'Sisi 2',
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _sisi3Cont,
                decoration: const InputDecoration(
                  labelText: 'Sisi 3',
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_sisi1Cont.value.text.toString().isEmpty ||
                    _sisi2Cont.value.text.toString().isEmpty ||
                    _sisi3Cont.value.text.toString().isEmpty) {
                  setState(() {
                    _message = "Pastikan semua input terisi dengan benar";
                  });

                  return;
                }

                final double sisi1 =
                    double.parse(_sisi1Cont.value.text.toString());
                final double sisi2 =
                    double.parse(_sisi2Cont.value.text.toString());
                final double sisi3 =
                    double.parse(_sisi3Cont.value.text.toString());

                final keliling = sisi1 + sisi2 + sisi3;

                final s = keliling / 2;

                final luas = sqrt(s * (s - sisi1) * (s - sisi2) * (s - sisi3));

                setState(() {
                  _message = "Keliling = $keliling | Luas: $luas";
                });
              },
              child: const Text("Hitung"),
            ),
            Text(
              _message,
              style: const TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
