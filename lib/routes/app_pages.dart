import 'package:get/get.dart';
import 'package:sistem_pakar/presentation/ui/pages/pages.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.ITEM,
      page: () => const HomePage(),
    ),
  ];
}
