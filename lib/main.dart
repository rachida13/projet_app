import 'package:exam_app/home_pages/Sign_log_page.dart';
import 'package:exam_app/home_pages/about_us.dart';
import 'package:exam_app/home_pages/alphabet_cour.dart';
import 'package:exam_app/home_pages/change_password_page.dart';
import 'package:exam_app/home_pages/edit_icon.dart';
import 'package:exam_app/home_pages/edit_profile.dart';
import 'package:exam_app/home_pages/first_page.dart';
import 'package:exam_app/home_pages/forgot_password.dart';
import 'package:exam_app/home_pages/selectionne_avatr.dart';
import 'package:exam_app/home_pages/settings_screen.dart';
import 'package:exam_app/home_pages/splach_screen.dart';
import 'package:exam_app/home_pages/terms_and_conditions.dart';
import 'package:exam_app/home_pages/select_user_type_screen.dart';
import 'package:flutter/material.dart';

import 'package:exam_app/home_pages/Profil_page.dart';

import 'package:exam_app/home_pages/Log_in.dart';
import 'package:exam_app/home_pages/Sign_up.dart';



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
  // ignore: prefer_const_constructors_in_immutables
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
          // ignore: prefer_const_constructors
          '/signlog': (context) => SignLogPage(),
          '/login': (context) => LogIn(),
          // ignore: prefer_const_constructors
          '/signup': (context) => SignUp(),
          // ignore: prefer_const_constructors
          '/signlogpage': (context) => SignLogPage(),
          // ignore: prefer_const_constructors
          '/profilpage': (context) => ProfilPage(),
          '/selectusertype': (context) => SelectUserTypeScreen(),
          // ignore: prefer_const_constructors
          '/settingsscreen': (context) => SettingsScreen(),
          // ignore: prefer_const_constructors
          '/editprofile': (context) => EditProfile(),
          // ignore: prefer_const_constructors
          '/editicon': (context) => EditIcon(),
          '/selectionneavatr': (context) => SelectionneAvatr(),
          // ignore: prefer_const_constructors
          '/aboutus': (context) => AboutUs(),
          // ignore: prefer_const_constructors
          '/termsandconditions': (context) => TermsAndConditions(),
          // ignore: prefer_const_constructors
          '/changepasswordpage': (context) => ChangePasswordPage(),
          // ignore: prefer_const_constructors
          '/forgotpassword': (context) => ForgotPassword(),
          '/ AlphabetPage': (context) => AlphabetCour(),
        });
  }
}
