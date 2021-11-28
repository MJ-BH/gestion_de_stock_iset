import 'package:flutter/material.dart';
import 'package:gestion_de_stock/app/controllers/famille_controller.dart';
import 'package:get/get.dart';

import 'ajout_famille.dart';

class Ajout extends StatelessWidget {
  Ajout({Key? key}) : super(key: key);
  var arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Ajout " + arg.toString())),
        body: navigate());
  }

  Widget navigate() {
    TextEditingController nameControll = TextEditingController();

    switch (arg.toString()) {
      case 'Famille':
        {
          return Column(
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
          );
        }
      case 'composant':
        {
          return AjoutComposant();
        }
      case 'personne':
        {
          return AjoutPersonne();
        }
      default:
        {
          return AjoutFamilleView();
        }
    }
  }
}

class AjoutComposant extends StatefulWidget {
  AjoutComposant({Key? key}) : super(key: key);

  @override
  _AjoutComposantState createState() => _AjoutComposantState();
}

class _AjoutComposantState extends State<AjoutComposant> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AjoutPersonne extends StatefulWidget {
  AjoutPersonne({Key? key}) : super(key: key);

  @override
  _AjoutPersonneState createState() => _AjoutPersonneState();
}

class _AjoutPersonneState extends State<AjoutPersonne> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
