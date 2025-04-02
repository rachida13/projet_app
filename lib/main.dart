import 'package:exam_app/home_pages/Sign_log_page.dart';
import 'package:exam_app/home_pages/about_us.dart';
import 'package:exam_app/home_pages/edit_icon.dart';
import 'package:exam_app/home_pages/edit_profile.dart';
import 'package:exam_app/home_pages/first_page.dart';
import 'package:exam_app/home_pages/selectionne_avatr.dart';
import 'package:exam_app/home_pages/settings_screen.dart';
import 'package:exam_app/home_pages/splach_screen.dart';
import 'package:exam_app/home_pages/terms_and_conditions.dart';
import 'package:exam_app/home_pages/user_type.dart';
import 'package:flutter/material.dart';

import 'package:exam_app/home_pages/Profil_page.dart';

import 'package:exam_app/home_pages/Log_in.dart';
import 'package:exam_app/home_pages/Sign_up.dart';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

void main() {
  /*
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ton-url-supabase.supabase.co', // ton URL Supabase
    anonKey: 'ta-clef-anon', // ta clé publique (anon key)
  );*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  /*final FlutterTts tts = FlutterTts();
  final SpeechToText speech = SpeechToText();

  Future<void> speak(String text) async {
    await tts.speak(
        "zaki and yacine play fifa game in xbox one ,zaki play with real madrid,yacine play with barcelona");
  }

  Future<void> listen(String text) async {
    await speech.listen(onResult: (result) {
      print("Recognized text: ${result.recognizedWords}");
    });
  }*/

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            //scaffoldBackgroundColor: AppColors.background,
            //pour changer la couleur de background

            ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/firstpage': (context) => FirstPage(),
          '/signlog': (context) => SignLogPage(),
          '/login': (context) => LogIn(),
          '/signup': (context) => SignUp(),
          '/signlogpage': (context) => SignLogPage(),
          '/profilpage': (context) => ProfilPage(),
          '/usertype': (context) => UserType(),
          '/settingsscreen': (context) => SettingsScreen(),
          '/editprofile': (context) => EditProfile(),
          '/editicon': (context) => EditIcon(),
          '/selectionneavatr': (context) => SelectionneAvatr(),
          '/aboutus': (context) => AboutUs(),
          '/termsandconditions': (context) => TermsAndConditions(),
        });
  }
}
