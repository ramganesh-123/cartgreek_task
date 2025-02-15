import 'package:cart_greek_task/home_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRouter {
  static final List<GetPage> routers = [
    GetPage(
      name: "/",
      page: () => const HomeScreen(),
    ),
  ];
}
