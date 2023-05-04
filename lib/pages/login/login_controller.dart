import 'dart:developer';

import 'package:flutter/cupertino.dart';

class LoginController {
  final loginController = TextEditingController();
  final senhaController = TextEditingController();




  logar(){
    log(loginController.text);
    log(senhaController.text);
  }


}