import 'package:gestion_de_stock/app/model/famil.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

class FamilleController extends GetxController {
  final name = "".obs;

  set name(value) => name.value = value;

  @override
  void onInit() {
    super.onInit();
    initBox();
  }

  initBox() async {
    await Hive.openBox<Famille>("Famille");
  }

  savetoBox() {
    var box = Hive.box('Famille');
    var f = Famille(name.value); 
    box.add(f);
  }
}
