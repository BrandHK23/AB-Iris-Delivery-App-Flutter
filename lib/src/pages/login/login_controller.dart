import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void goToRegister(){
    Get.toNamed('/register');
  }

  void login(){
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Password: $password');

    if(isValidForm(email, password)){
      print('Formulario válido');
      Get.snackbar('Inicio de sesión exitoso', 'Formulario válido');
    }
  }

  bool isValidForm(String email, String password){
    if(!GetUtils.isEmail(email)){
      Get.snackbar('Error', 'Email no válido');
      return false;
    }

    if(email.isEmpty || password.isEmpty){
      Get.snackbar('Error', 'Todos los campos son obligatorios');
      return false;
    }
    return true;
  }
}