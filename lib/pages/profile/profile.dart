import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          image: AssetImage('assets/user_default.png'),
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
                      subtitle: Text('usuario teste'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('E-MAIL'),
                      subtitle: Text('exemplo@exemplo.com.br'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('ENDEREÇO'),
                      subtitle: Text(
                        'Rua teste, 76 Bairro: teste, Cidade: teste, Complemento: Teste',
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
                      subtitle: Text('usuario teste'),
                    ),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('Outras informações'),
                      subtitle: Text('exemplo@exemplo.com.br'),
                    ),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('Outras informações'),
                      subtitle: Text(
                        'Rua teste, 76 Bairro: teste, Cidade: teste, Complemento: Teste',
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
