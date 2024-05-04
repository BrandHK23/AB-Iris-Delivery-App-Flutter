import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iris_delivery_app_ab/src/pages/register/register_controller.dart';

class RegisterPage extends StatelessWidget {

  RegisterController con = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
          _imageUser(),
          _buttonBack(context),
        ],
      ),
      );
  }

  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      color: Theme.of(context).primaryColor,
    );
  }

  Widget _boxForm(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.70,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.25, left: 35, right: 35),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10), // Más redondeado
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 20,
              spreadRadius: 1,
            )
          ]
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _textYourInfor(context),
            _textFieldName(context),
            _textFieldEmail(context),
            _textFieldPhone(context),
            _textFieldPassword(context),
            _textFieldConfirmPassword(context),
            _buttonRegister(context),
          ],
        ),
      ),
    );
  }

  Widget _textYourInfor(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Text('Ingresa los campos', style: Theme.of(context).textTheme.titleLarge),
    );
  }

  Widget _textFieldEmail(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: con.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Correo Electrónico',
          labelText: 'Correo Electrónico',
          prefixIcon: Icon(Icons.email, color: Theme.of(context).colorScheme.secondary),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _textFieldName(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: con.nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Nombre',
          labelText: 'Nombre',
          prefixIcon: Icon(Icons.person, color: Theme.of(context).colorScheme.secondary),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _textFieldPhone(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: con.phoneController,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Teléfono',
          labelText: 'Teléfono',
          prefixIcon: Icon(Icons.phone, color: Theme.of(context).colorScheme.secondary),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _textFieldConfirmPassword(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: con.confirmPasswordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Confirmar Contraseña',
          labelText: 'Confirmar Contraseña',
          prefixIcon: Icon(Icons.lock, color: Theme.of(context).colorScheme.secondary),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _textFieldPassword(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        controller: con.passwordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          prefixIcon: Icon(Icons.lock, color: Theme.of(context).colorScheme.secondary),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }

  Widget _buttonRegister(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
        onPressed: () => con.register(),
        style: ElevatedButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.background, // Color del texto cuando se activa el botón
          backgroundColor: Theme.of(context).colorScheme.primary, // Color de fondo del botón
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), // Bordes redondeados
          elevation: 10, // Elevación del botón
          shadowColor: Theme.of(context).colorScheme.secondary, // Color de la sombra del botón
          textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor // Aquí se maneja el color del texto en estilo interno
          ),
        ),
        child: const Text('Registrarse'),
      ),
    );
  }

  Widget _imageUser(){
    return SafeArea(
      child: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onTap: (){},
          child: const CircleAvatar(
            radius: 65,
            backgroundImage: AssetImage('assets/img/user_asset_removebg.png'),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }

  Widget _buttonBack(BuildContext context){
    return SafeArea(
      child: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(top: 20, left: 20),
        child: InkWell(  // Uso de InkWell para proporcionar el efecto Ripple
          onTap: () => Get.back(),
          borderRadius: BorderRadius.circular(25),  // Borde redondeado para el efecto ripple
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.background),
          ),
        ),
      ),
    );
  }

}
