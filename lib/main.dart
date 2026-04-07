import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Az önce oluşan sihirli dosyamız

void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const StudyoApp());
}

class StudyoApp extends StatelessWidget {
  const StudyoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stüdyo Rezervasyon',
      debugShowCheckedModeBanner: false, 
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: const Scaffold(
        body: Center(
          child: Text("Firebase Bağlantısı Başarılı! \n Yakında Giriş Ekranı Gelecek."),
        ),
      ),
    );
  }
}