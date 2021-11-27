import 'package:flutter/material.dart';
import 'package:gestion_de_stock/app/ui/componnents/componnets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginPageView(),
    );
  }
}

class LoginPageView extends StatefulWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  _LoginPageViewState createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  GetStorage box = GetStorage();
  var comp = Componnets();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwardController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    box.writeIfNull("mail", "mail@admin.com");
    box.writeIfNull("password", "123456");
    box.writeIfNull("logged", false);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                obscuringCharacter: "*",
                controller: emailController,
                enabled: true,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                obscuringCharacter: "*",
                controller: passwardController,
                enabled: true,
                decoration: const InputDecoration(
                  labelText: "password",
                ),
              ),
            ),
          ),
        ),
        comp.myButton(
            "Login", comp.buttonStyle(Colors.amber, Colors.blue, comp.myStyle),
            fun: () {
          validform();
        })
      ],
    );
  }

  validform() {
    String mail = emailController.text;
    String passowrd = passwardController.text;
    String mailBox = box.read("mail");
    String passowrdBox = box.read("password");
    return (mail == mailBox && passowrd == passowrdBox)
        ? {Get.offAndToNamed("/"), box.write("logged", true)}
        : Get.snackbar("erorr", "mail or passorwd wrong ",
            backgroundColor: Colors.red[600], snackPosition: SnackPosition.TOP);
  }
}
