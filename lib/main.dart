import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:login_ui/pages/welcome.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeApp();
  runApp(const MyApp());
}

Future<void> initializeApp() async {
  // Place any initialization code here, such as loading assets, data, etc.
  // You can use Future.delayed, async/await, or other async operations here
  await Future.delayed(const Duration(seconds: 1));

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          shadow: const Color(0xFFFFFFFF),
          seedColor: const Color(0xFF1F41BB),
        ),
        useMaterial3: true,
      ),
      home: const WelcomeScreen(),
    );
  }
}
