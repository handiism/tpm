import 'package:flutter/material.dart';

class LayangLayang extends StatefulWidget {
  const LayangLayang({super.key});

  @override
  State<LayangLayang> createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
  final TextEditingController _cont1 = TextEditingController();
  final TextEditingController _cont2 = TextEditingController();
  String _message = "";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Luas'),
              Tab(text: 'Keliling'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Layang-Layang",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _cont1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Diagonal 1',
                        // errorText: 'Error message',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _cont2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Diagonal 2',
                        // errorText: 'Error message',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_cont1.text.isEmpty || _cont1.text.isEmpty) {
                        setState(() {
                          _message =
                              "Pastikan setiap input terisi dengan benar";
                        });
                      }

                      final double d1 = double.parse(_cont1.text.toString());
                      final double d2 = double.parse(_cont2.text.toString());

                      final hasil = d1 * d2 / 2;

                      setState(() {
                        _message = "Hasil: $hasil";
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Layang-Layang",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _cont1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Sisi Pendek',
                        // errorText: 'Error message',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _cont2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Sisi Panjang',
                        // errorText: 'Error message',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_cont1.text.isEmpty || _cont1.text.isEmpty) {
                        setState(() {
                          _message =
                              "Pastikan setiap input terisi dengan benar";
                        });
                      }

                      final double a = double.parse(_cont1.text.toString());
                      final double b = double.parse(_cont2.text.toString());

                      final hasil = 2 * (a + b);

                      setState(() {
                        _message = "Hasil: $hasil";
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
          ],
        ),
      ),
    );
  }
}
