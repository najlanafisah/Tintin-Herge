import 'package:flutter/material.dart';
import 'package:tintin_app/models/products_model.dart';
import 'package:tintin_app/utils/consts.dart';
import 'package:tintin_app/views/auth/login_screen.dart';
import 'package:tintin_app/views/auth/register_screen.dart';
import 'package:tintin_app/views/detail/detail.screen.dart';
import 'package:tintin_app/views/home/catalogue_screen.dart';
import 'package:tintin_app/views/onboarding/onboarding_screen.dart';

void main() {
  runApp(TintinApp());
}

class TintinApp extends StatefulWidget {
  const TintinApp({super.key});

  @override
  State<TintinApp> createState() => _TintinAppState();
}

class _TintinAppState extends State<TintinApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tintin & Herge",
      theme: ThemeData(
        fontFamily: 'Plus Jakarta Sans',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: textColor),
          bodySmall: TextStyle(color: textColor),
        ),
        scaffoldBackgroundColor: Colors.white,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: textButtonColor),
        ),
      ),
      // initialRoute: untuk mendefinisikan kelas apa yang akan tampil pertama kali
      // saat aplikasi dijalankan
      initialRoute: '/catalogue',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/catalogue': (context) => CatalogueScreen(),
        '/detail': (context) {
          final args = ModalRoute.of(context)?.settings.arguments;
          if (args is ProductsModel) {
            return DetailScreen(product: args);
          } else {
            return Scaffold(
              body: Center(child: Text("Product not found")),
            );
          }
        }
      },
    );
  }
}
