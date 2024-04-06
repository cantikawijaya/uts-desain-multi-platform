import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Penghitung'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hitung: 0', // Ubah angka sesuai keadaan awal
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {}, // Tambahkan fungsi untuk menambah hitungan
                child: const Text('+'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('Penghitung bertambah (smoke test)', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verifikasi teks hitungan awal (sesuaikan dengan keadaan awal)
    expect(find.text('Hitung: 0'), findsOneWidget);
    expect(find.text('Hitung: 1'), findsNothing);

    // Simulasikan penekanan tombol tambah
    await tester.tap(find.text('+'));
    await tester.pump();

    // Verifikasi teks hitungan berubah
    expect(find.text('Hitung: 0'), findsNothing);
    expect(find.text('Hitung: 1'), findsOneWidget);
  });
}
