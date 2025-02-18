import 'package:flutter/material.dart';
import 'qr_scan_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Qr Code Kullanımı',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

//await Firebase.initilizeApp(options.DefaultFirebaseOptions.currentPlatform,);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => QrGenerateScreen())),
              child: Text("Qr Code Üret"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.red[700]),
              ),
            ),
            SizedBox(height: 20.0),*/
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const QrScanScreen())),
              child: const Text("Qr Code Tarat"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.red[700]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}