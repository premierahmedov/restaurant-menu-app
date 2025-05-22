import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'pages/home_page.dart';

void main(){
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const RestaurantApp());
}

class RestaurantApp extends StatefulWidget {
  const RestaurantApp({super.key});

  @override
  State<RestaurantApp> createState() => _RestaurantAppState();
}

class _RestaurantAppState extends State<RestaurantApp> {

  @override
  void initState() {
    super.initState();
    // Ilova yuklanish jarayonini simulyatsiya qilish
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Bu yerda siz ilovangiz uchun kerakli ma'lumotlarni yuklashingiz mumkin.
    // Masalan, API chaqiruvi, ma'lumotlar bazasidan o'qish va hokazo.
    await Future.delayed(const Duration(seconds: 2)); // 2 soniya kutib turish misoli

    // Ma'lumotlar yuklanib bo'lgach yoki ilova tayyor bo'lgach splash ekranini olib tashlash.
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.deepPurple,
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.deepPurple
          ).copyWith(
            secondary: Colors.amber
          ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          //centerTitle: true,
          elevation: 4,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold
          )
        )
      ),

      home: HomePage(),
    );
  }
}
