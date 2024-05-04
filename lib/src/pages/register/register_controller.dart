import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void register() {
    String email = emailController.text.trim();
    String name = nameController.text.trim();
    String phone = phoneController.text.trim();
    String confirmPassword = confirmPasswordController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email');
    print('Password: $password');

    if (isValidForm(email, name, phone, confirmPassword, password)) {
      print('Formulario válido');
      Get.snackbar('Éxito!', 'Registro exitoso');
    }
  }

  bool isValidForm(email, name, phone,
      confirmPassword, password) {

    if (!GetUtils.isEmail(email)) {
      Get.snackbar('Error', 'Email no válido');
      return false;
    }

    if (phone.length < 10) {
      Get.snackbar('Error', 'Número de teléfono no válido');
      return false;
    }

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Todos los campos son obligatorios');
      return false;
    }

    if (password != confirmPassword) {
      Get.snackbar('Error', 'Las contraseñas no coinciden');
      return false;
    }
    return true;
  }
}
