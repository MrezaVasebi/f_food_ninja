import 'package:f_food_delivery/scr/presentation/bottom_navigation.dart';
import 'package:f_food_delivery/scr/presentation/call_ringing.dart';
import 'package:f_food_delivery/scr/presentation/chat_details.dart';
import 'package:f_food_delivery/scr/presentation/extra_menu.dart';
import 'package:f_food_delivery/scr/presentation/extra_restaurant.dart';
import 'package:f_food_delivery/scr/presentation/filter_section.dart';
import 'package:f_food_delivery/scr/presentation/finish_order.dart';
import 'package:f_food_delivery/scr/presentation/list/voucher_list.dart';
import 'package:f_food_delivery/scr/presentation/menu_details.dart';
import 'package:f_food_delivery/scr/presentation/notif.dart';
import 'package:f_food_delivery/scr/presentation/onboarding_container.dart';
import 'package:f_food_delivery/scr/presentation/order_confirm.dart';
import 'package:f_food_delivery/scr/presentation/order_details.dart';
import 'package:f_food_delivery/scr/presentation/payment_method.dart';
import 'package:f_food_delivery/scr/presentation/reset_password.dart';
import 'package:f_food_delivery/scr/presentation/restaurant_details.dart';
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
      theme: ThemeData(
        fontFamily: 'myFont',
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'myFont',
            ),
      ),
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
        '/bottomNavigation': (context) => const BottomNavigation(),
        '/notif': (context) => const Notif(),
        '/filterSection': (context) => const FilterSection(),
        '/extraRestaurant': (context) => const ExtraRestaurant(),
        '/extraMenu': (context) => const ExtraMenu(),
        '/voucherList': (context) => const VoucherList(),
        '/resDetails': (context) => const RestaurantDetails(),
        '/menuDetails': (context) => const MenuDetails(),
        '/chatDetails': (context) => const ChatDetails(),
        '/callRinging': (context) => const CallRinging(),
        '/orderDetails': (context) => const OrderDetails(),
        '/orderConfirm': (context) => const OrderConfirm(),
        '/finishOrder': (context) => const FinishOrder(),
      },
      // onGenerateRoute: (RouteSettings settings) {
      //   if (settings.name == '/successNotification') {
      //     final String msg = settings.arguments as String;
      //     return MaterialPageRoute(
      //       builder: (context) {
      //         return SuccessNotification(msg: msg);
      //       },
      //     );
      //   }

      //   return null;
      // },
      // home: const Scaffold(
      //   backgroundColor: Colors.white,
      //   body: Splash(),
      // ),
    );
  }
}
