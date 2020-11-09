import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tendytudo_demo/pages/login/controllers/login_controller.dart';
import 'package:tendytudo_demo/utils/app_constant.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Scaffold(
        // resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.lightGreen, ColorThemeApp])),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 50, bottom: 20.0),
                      height: Get.width * 0.25,
                      child: Image.asset('assets/tendytudologo.png'),
                    ),
                    Text(
                      "TendyTudo ".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: Get.width * 0.12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(16.0),
                              prefixIcon: Container(
                                  padding: const EdgeInsets.only(
                                      top: 16.0, bottom: 16.0),
                                  margin: const EdgeInsets.only(right: 8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                          bottomRight: Radius.circular(10.0))),
                                  child: Icon(
                                    Icons.person,
                                    color: Colors.lightGreen,
                                  )),
                              hintText: "Coloque seu E-mail",
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.width * 0.03,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(16.0),
                              prefixIcon: Container(
                                  padding: const EdgeInsets.only(
                                      top: 16.0, bottom: 16.0),
                                  margin: const EdgeInsets.only(right: 8.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0),
                                          topRight: Radius.circular(30.0),
                                          bottomRight: Radius.circular(10.0))),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.lightGreen,
                                  )),
                              hintText: "Coloque sua senha",
                              hintStyle: TextStyle(color: Colors.white54),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.1),
                            ),
                            obscureText: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.width * 0.08,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RoundedLoadingButton(
                            // width: double.infinity,
                            duration: Duration(seconds: 2),
                            valueColor: Colors.lightGreen,
                            color: Colors.white,
                            child: Text(
                              'ENTRAR',
                              style: TextStyle(
                                color: Colors.lightGreen,
                              ),
                            ),
                            onPressed: () {
                              Get.offAndToNamed('/home');
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.width * 0.25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: FlatButton(
                            textColor: Colors.white70,
                            child: Text("Crie sua conta".toUpperCase()),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          color: Colors.white54,
                          width: 2.0,
                          height: 20.0,
                        ),
                        Expanded(
                          child: FlatButton(
                            textColor: Colors.white70,
                            child: Text("Esqueceu sua senha?".toUpperCase()),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
