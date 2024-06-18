import 'package:f_food_delivery/scr/presentation/onboarding_container.dart';
import 'package:f_food_delivery/scr/presentation/payment_method.dart';
import 'package:f_food_delivery/scr/presentation/reset_password.dart';
import 'package:f_food_delivery/scr/presentation/sign_in.dart';
import 'package:f_food_delivery/scr/presentation/sign_up.dart';
import 'package:f_food_delivery/scr/presentation/sign_up_process.dart';
import 'package:f_food_delivery/scr/presentation/splash.dart';
import 'package:f_food_delivery/scr/presentation/success_notification.dart';
import 'package:f_food_delivery/scr/presentation/upload_your_photo.dart';
import 'package:f_food_delivery/scr/presentation/verification_code.dart';
import 'package:f_food_delivery/scr/presentation/your_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack); // hide statusbar

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/onboarding': (context) => const OnboardingContainer(),
        '/signUp': (context) => const SignUp(),
        '/signIn': (context) => const SignIn(),
        '/signUpProcess': (context) => const SignUpProcess(),
        '/paymentMethod': (context) => const PaymentMethod(),
        '/uploadYourPhoto': (context) => const UploadYourPhoto(),
        '/yourLocation': (context) => const YourLocation(),
        '/successNotification': (context) => const SuccessNotification(
              msg: '',
            ),
        '/verificationCode': (context) => const VerificationCode(),
        '/resetPassword': (context) => const ResetPassword(),
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/successNotification') {
          final String msg = settings.arguments as String;
          return MaterialPageRoute(
            builder: (context) {
              return SuccessNotification(msg: msg);
            },
          );
        }

        return null;
      },
      // home: const Scaffold(
      //   backgroundColor: Colors.white,
      //   body: Splash(),
      // ),
    );
  }
}
