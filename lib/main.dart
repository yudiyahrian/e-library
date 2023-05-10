import 'package:e_library/models/user.dart';
import 'package:e_library/screens/setting/help.dart';
import 'package:e_library/screens/setting/history.dart';
import 'package:e_library/screens/setting/how_to_use.dart';
import 'package:e_library/screens/setting/info.dart';
import 'package:e_library/screens/setting/invoice.dart';
import 'package:e_library/screens/setting/notification.dart';
import 'package:e_library/screens/setting/profile.dart';
import 'package:e_library/screens/setting/terms_policy.dart';
import 'package:e_library/screens/splash_screen.dart';
import 'package:e_library/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: const SplashScreen(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/profile':
              return PageTransition(
                child: const Profile(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/history':
              return PageTransition(
                child: const History(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/notifications':
              return PageTransition(
                child: const Notifications(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/info':
              return PageTransition(
                child: const Info(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/help':
              return PageTransition(
                child: const Help(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/how_to_use':
              return PageTransition(
                child: const HowToUse(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/invoice':
              return PageTransition(
                child: const InvoiceSetting(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            case '/terms':
              return PageTransition(
                child: const TermsAndPolicy(),
                type: PageTransitionType.fade,
                settings: settings,
                duration: const Duration(milliseconds: 300),
                reverseDuration: const Duration(milliseconds: 200),
              );
            default:
              return null;
          }
        },
      ),
    );
  }
}
