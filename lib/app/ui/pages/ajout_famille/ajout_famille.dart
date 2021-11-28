import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Ajout extends StatelessWidget {
  Ajout({Key? key}) : super(key: key);
  var arg = Get.arguments;

  @override
  Widget build(BuildContext context) {
    print(arg.toString());
    return Scaffold(
        appBar: AppBar(title: Text("Ajout " + arg.toString())),
        body: navigate());
  }

  Widget navigate() {
    switch (arg.toString()) {
      case 'Famille':
        {
          return AjoutFamille();
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
          return AjoutPersonne();
        }
    }
  }
}

class AjoutFamille extends StatefulWidget {
  AjoutFamille({Key? key}) : super(key: key);

  @override
  _AjoutFamilleState createState() => _AjoutFamilleState();
}

class _AjoutFamilleState extends State<AjoutFamille> {
  @override
  Widget build(BuildContext context) {
    return Container();
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
