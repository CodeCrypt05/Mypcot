import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mypcot_app/provider/change_tab.dart';
import 'package:mypcot_app/screens/home_screen.dart';
import 'package:mypcot_app/utils/colors.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ChnageTab>(
          create: (context) => ChnageTab(),
        ),
      ],

      // To check responsivenes uncomment below code & comment  child: const MyApp(),

      /* child: DevicePreview(
        enabled: !kReleaseMode,
        builder: ((context) => const MyApp()),
      ), */

      child: const MyApp(),
    ),
  );
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor:
        Color.fromARGB(255, 255, 255, 255), // Change this to your desired color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            primary: Color.fromARGB(236, 255, 255, 255),
            secondary: AppColors.blueLight,
            background: Color.fromARGB(250, 255, 255, 255)),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
