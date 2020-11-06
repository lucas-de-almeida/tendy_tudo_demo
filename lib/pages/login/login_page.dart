import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tendytudo_demo/pages/login/controllers/login_controller.dart';
import 'package:tendytudo_demo/utils/app_constant.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (_) => Scaffold(
        body: Container(
          padding: const EdgeInsets.all(16.0),
          height: double.infinity,
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.lightGreen, ColorThemeApp])),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                height: 80,
                child: Image.asset('assets/tendytudologo.png'),
              ),
              Text(
                "TendyTudo ".toUpperCase(),
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16.0),
                  prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
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
              SizedBox(height: 10.0),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16.0),
                  prefixIcon: Container(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
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
              SizedBox(height: 30.0),
              SizedBox(
                width: double.infinity,
                child: Obx(
                  () => RaisedButton(
                    color: Colors.white,
                    textColor: Colors.lightGreen,
                    padding: const EdgeInsets.all(20.0),
                    child: _.isLoading
                        ? SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(
                              backgroundColor: Color(0xFF007838),
                            ))
                        : Text("Entrar".toUpperCase()),
                    onPressed: () async {
                      _.isLoading = true;
                      await Future.delayed(Duration(seconds: 2));
                      Get.toNamed('/home');
                      _.isLoading = false;
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    textColor: Colors.white70,
                    child: Text("Crie sua conta".toUpperCase()),
                    onPressed: () {},
                  ),
                  Container(
                    color: Colors.white54,
                    width: 2.0,
                    height: 20.0,
                  ),
                  FlatButton(
                    textColor: Colors.white70,
                    child: Text("Esqueceu sua senha?".toUpperCase()),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
