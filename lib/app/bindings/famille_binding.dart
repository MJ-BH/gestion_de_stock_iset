
import 'package:get/get.dart';
import '../controllers/famille_controller.dart';


class FamilleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FamilleController>(() => FamilleController());
  }
}