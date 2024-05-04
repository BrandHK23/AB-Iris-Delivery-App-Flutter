import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iris_delivery_app_ab/src/pages/login/login_controller.dart';

class LoginPage extends StatelessWidget {

  LoginController con = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 65,
        child: _textDontHaveAccount(context),
      ),
      body: Stack(
        children: [
          _backgroundCover(context),
          _boxForm(context),
          Column(children: [
            _imageCover(),
          ])
        ],
      ),
    );
  }

  Widget _imageCover() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/img/logo_blue_background_recortado.jpg',
          width: 180,
          height: 180,
        ),
      ),
    );
  }

  Widget _textDontHaveAccount(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('¿No tienes cuenta?', style: Theme.of(context).textTheme.bodyLarge),
        TextButton(
          onPressed: () => con.goToRegister(),
          child: Text('Regístrate aquí', style: TextStyle(color: Theme.of(context).floatingActionButtonTheme.foregroundColor, fontWeight: FontWeight.bold)),
        )
      ],
    );
  }

  Widget _boxForm(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.33, left: 35, right: 35),
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
            _textFieldEmail(context),
            _textFieldPassword(context),
            _buttonLogin(context),
          ],
        ),
      ),
    );
  }

  Widget _textYourInfor(BuildContext context){
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Text('Inicia Sesión', style: Theme.of(context).textTheme.titleLarge),
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

  Widget _buttonLogin(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ElevatedButton(
        onPressed: () => con.login(),
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
        child: const Text('Iniciar Sesión'),
      ),
    );
  }


  Widget _backgroundCover(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      color: Theme.of(context).primaryColor,
    );
  }
}
