
import 'package:flutter/material.dart';
import 'package:gestion_de_stock/app/controllers/famille_controller.dart';
import 'package:get/get.dart';


class FamillePage extends GetView<FamilleController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FamillePage'),
      ),
      body: SafeArea(
        child: Text('FamilleController'),
      ),
    );
  }
}
  