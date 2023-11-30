import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/firebase_options.dart';
import 'package:whatsappclone/router.dart';
import 'package:whatsappclone/screens/mobile_layout_screen.dart';
import 'package:whatsappclone/screens/web_layout_screen.dart';
import 'package:whatsappclone/utils/responsive_layout.dart';
import 'colors.dart';
import 'featurs/landing/screans/landing_screan.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp app',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      onGenerateRoute: (settings)=>generateRoute(settings),
      home: const landinScreean(),
    );
  }
}
