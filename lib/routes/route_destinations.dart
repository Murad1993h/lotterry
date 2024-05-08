import 'package:click/views/navbar/navbar.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:click/routes/route_names.dart';
import 'package:click/views/auth/login/login.dart';
import 'package:click/views/auth/register/register.dart';
import 'package:click/views/splash/splash_screen.dart';

import '../views/categories/accessories/datiles/assessories_prize.dart';
import '../views/categories/accessories/datiles/brand_assessories.dart';
import '../views/categories/accessories/datiles/mobile_assessories_datiles.dart';
import '../views/categories/accessories/datiles/mobile_datiles.dart';
import '../views/categories/accessories/datiles/mobile_prize.dart';
import '../views/categories/accessories/mobiles_accessories.dart';
import '../views/categories/accessories/mobiles_accessories.dart';
import '../views/categories/accessories/mobiles_accessories.dart';
import '../views/categories/accessories/mobiles_accessories.dart';
import '../views/categories/categories_screen.dart';

class RouteDestinations {
  static List<GetPage> pages = [
    GetPage(
      name: RouteNames.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteNames.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: RouteNames.home,
      page: () => const NavbarView(),
    ),
    GetPage(
      name: RouteNames.register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: RouteNames.categories,
      page: () => const CategoriesScreen(),
    ),
    GetPage(
      name: RouteNames.mobileAccessories,
      page: () => const MobileAccessories(),
    ),
    GetPage(
      name: RouteNames.assessoriesDatiles,
      page: () => const AssessoriesDatiles(),
    ),
    GetPage(
      name: RouteNames.brandAssessories,
      page: () => const BrandAssessories(),
    ),
    GetPage(
      name: RouteNames.assessoriesPrize,
      page: () => const AssessoriesPrize(),
    ),
    GetPage(
      name: RouteNames.mobileDatiles,
      page: () => const MobileDatiles(),
    ),
  ];
}


