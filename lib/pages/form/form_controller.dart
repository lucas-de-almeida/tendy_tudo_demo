import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class FormController extends GetxController {
  Rx<GlobalKey<FormState>> _formKey = GlobalKey<FormState>().obs;
  GlobalKey<FormState> get formKey => _formKey.value;

  RxString _nameValue = RxString();
  String get nameValue => _nameValue.value;
  set nameValue(String value) => _nameValue.value = value;

  RxString _emailValue = RxString();
  String get emailValue => _emailValue.value;
  set emailValue(String value) => _emailValue.value = value;

  RxString _phoneValue = RxString();
  String get phoneValue => _phoneValue.value;
  set phoneValue(String value) => _phoneValue.value = value;

  RxString _activityValue = RxString();
  String get activityValue => _activityValue.value;
  set activityValue(String value) => _activityValue.value = value;

  RxString _cityValue = RxString();
  String get cityValue => _cityValue.value;
  set cityValue(String value) => _cityValue.value = value;

  void saveForm() {
    if (formKey.currentState.validate()) {
      print('to no save');
      sendEmail();
    } else
      print('NOT VALIDATE');
  }

  String frasePronta() {
    return 'Nome: $nameValue, E-mail: $emailValue, Telefone: $phoneValue, Ramo de atividade: $activityValue, Cidade: $cityValue';
  }

  void envioMensagem() {}
  String _username;
  var smtpServer;
  RxString _text = ''.obs;

  Email(String username, String password) {
    _username = username;
    smtpServer = gmail(_username, password);
  }

  //Envia um email para o destinatário, contendo a mensagem com o nome do sorteado
  Future<bool> sendMessage(
      String mensagem, String destinatario, String assunto) async {
    //Configurar a mensagem
    final message = Message()
      ..from = Address(_username, 'Nome')
      ..recipients.add(destinatario)
      ..subject = assunto
      ..text = mensagem;

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());

      return true;
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
      return false;
    }
  }

  void sendEmail() async {
    var email = Email('TendyAaZ@gmail.com', '1992JK666');
    print('to no send');

    bool result = await email.sendMessage(
        'Nome:', 'TendyAaZ@gmail.com', 'O nome do autor é');

    _text.value = result ? 'Enviado.' : 'Não enviado.';
  }
}
