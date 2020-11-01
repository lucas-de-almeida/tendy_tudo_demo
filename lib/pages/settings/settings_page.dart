import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:tendytudo_demo/utils/app_constant.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemeApp,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Definições',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.moon,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.lock_outline,
                          color: ColorThemeApp,
                        ),
                        title: Text("Mude o Password"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change password
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          FontAwesomeIcons.language,
                          color: ColorThemeApp,
                        ),
                        title: Text("Idioma"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change language
                        },
                      ),
                      _buildDivider(),
                      ListTile(
                        leading: Icon(
                          Icons.location_on,
                          color: ColorThemeApp,
                        ),
                        title: Text("localização"),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () {
                          //open change location
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Notificações",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SwitchListTile(
                  activeColor: Colors.purple,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text(
                    "Receba notificações",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.white,
                  contentPadding: const EdgeInsets.all(0),
                  value: false,
                  title: Text(
                    "Receba novidades no email",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onChanged: null,
                ),
                SwitchListTile(
                  activeColor: Colors.white,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text(
                    "Receba notificações de ofertas",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onChanged: (val) {},
                ),
                SwitchListTile(
                  activeColor: Colors.white,
                  contentPadding: const EdgeInsets.all(0),
                  value: true,
                  title: Text(
                    "Received App Updates",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onChanged: null,
                ),
                const SizedBox(height: 20.0),
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Sair",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Get.defaultDialog(
                      title: '',
                      content: Text("Você estara saindo da Aplicação!"),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
