import 'package:LetTutor/modules/auth/auth.dart';
import 'package:LetTutor/modules/home/home.dart';
import 'package:LetTutor/modules/home/tabs/InboxPage.dart';
import 'package:LetTutor/modules/modules.dart';
import 'package:LetTutor/modules/inbox/inbox.dart';
import 'package:LetTutor/modules/me/cards/cards_screen.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => AuthScreen(),
      binding: AuthBinding(),
      children: [
        GetPage(name: Routes.REGISTER, page: () => RegisterScreen()),
        GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
      ],
    ),
    GetPage(
        name: Routes.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        children: [
          GetPage(name: Routes.INBOX, page: () => InboxPage()),
        ]),
  ];
}
