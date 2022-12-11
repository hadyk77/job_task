import 'package:get/route_manager.dart';
import '../../features/home/presentation/pages/main_screen.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: MainScreen.name, page: () => const MainScreen()),
  ];
}
