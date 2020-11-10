import 'package:flutter/material.dart';
import 'package:tendytudo_demo/utils/app_constant.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorThemeApp,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Perfil',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Color(0xFF007838),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Card(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Color(0xFF007838),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/pp.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 5,
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('NOME'),
                      subtitle: Text('Renato Machado'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('E-MAIL'),
                      subtitle: Text('grupowinnercallcenter@gmail.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('ENDEREÇO'),
                      subtitle: Text(
                        'Rua Marechal Floriano Peixoto, 386 Bairro: Centro Historico, Cidade: Porto Alegre, Complemento: apto 15',
                        softWrap: true,
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 5,
                    ),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('Outras informações'),
                      subtitle: Text('Proprietario da Winners'),
                    ),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('Telefone'),
                      subtitle: Text('051 9 9400-4829'),
                    ),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('Outras informações'),
                      subtitle: Text(
                        'Buscamos da melhor forma facilitar sua vida,',
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
