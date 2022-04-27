import 'package:get/route_manager.dart';
import 'package:singlemusic/pages/home/index.dart';
import 'package:singlemusic/pages/launch/index.dart';
import 'package:singlemusic/pages/login/index.dart';
import 'package:singlemusic/routes/app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.launch,
      page: () => const LaunchPage(),
      binding: LaunchBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
