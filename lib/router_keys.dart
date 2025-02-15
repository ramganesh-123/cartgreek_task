import 'package:get/get.dart';

GenerateRoute get intro1 => GenerateRoute("/intropage1");

class GenerateRoute {
  String route;

  GenerateRoute(this.route);

  GenerateRoute param(String param) {
    route = "$route/$param";
    return this;
  }

  GenerateRoute addKey(String key) {
    route = "$route/:$key";
    return this;
  }

  void get navigate {
    Get.toNamed(route);
  }

  void get replace {
    Get.offNamed(route);
  }

  void get sweepNavigate {
    Get.offAllNamed(route);
  }
}
