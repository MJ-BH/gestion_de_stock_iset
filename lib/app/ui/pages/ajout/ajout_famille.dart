import 'package:flutter/material.dart';
import 'package:gestion_de_stock/app/controllers/famille_controller.dart';
import 'package:get/get.dart';

class AjoutFamille extends StatelessWidget {
   AjoutFamille({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AjoutFamilleView();
  }
}

class AjoutFamilleView extends StatefulWidget {
  AjoutFamilleView({Key? key}) : super(key: key);

  @override
  _AjoutFamilleViewState createState() => _AjoutFamilleViewState();
}

class _AjoutFamilleViewState extends State<AjoutFamilleView> {
  TextEditingController nameControll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GetX<FamilleController>(
            initState: (_) {},
            builder: (_) {
              return TextFormField(
                autofocus: true,
                controller: nameControll,
                decoration: const InputDecoration(
                  labelText: "Name",
                ),
                onChanged: (value) {},
              );
            },
          ),
          ElevatedButton(
              onPressed: () {
                Get.find<FamilleController>().name(nameControll.text);
                Get.find<FamilleController>().savetoBox();
              },
              child: Text("Ajouter "))
        ],
      ),
    );
  }
}
