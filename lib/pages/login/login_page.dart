import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_uber/pages/login/login_controller.dart';
import 'package:flutter_uber/pages/map/map_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _con = LoginController(); //Objeto Controlador

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPersistentFrameCallback((timeStamp) {
      _con.init(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.black87,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _bannerApp(),
            _textDescription(),
            _textLogin(),
            _textFieldEmail(),
            _textFieldPassword(),
            _buttonLogin(),
            _buttonDontHaveAccount(),
            //_textDontHaveAccount()
          ],
        ),
      ),
    );
  } //Termina build

  Widget _bannerApp() {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.topLeft,
              colors: [
                Colors.black87,
                Colors.black12,
                Color.fromARGB(90, 69, 110, 150)
              ]),
        ),
        height: MediaQuery.of(context).size.height * 0.30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/img/logo_app.png',
              width: 150,
              height: 100,
            ),
            const Text(
              'Facil y Rapido',
              style: TextStyle(
                  color: Colors.black54, fontSize: 30, fontFamily: 'OneDay'),
            )
          ],
        ),
      ),
    );
  } //Terminar _bannerApp

  Widget _textDescription() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: const Text(
        'Continua con:',
        style: TextStyle(color: Colors.black54, fontSize: 24),
      ),
    );
  } //Termina _textDescription

  Widget _textLogin() {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: const Text(
        'Login',
        style: TextStyle(
            color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  } // Termina _textLogin

  Widget _textFieldEmail() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: _con.emailController, //Se asigna el controlador del email
        decoration: const InputDecoration(
          hintText: 'correo@gmail.com',
          labelText: 'Correo Electronico',
          suffix: Icon(
            Icons.email_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } //Termina _textFieldEmail

  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _con.passwordController, //Controlador de password
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Contraseña',
          suffix: Icon(
            Icons.lock_clock_outlined,
            color: Colors.black54,
          ),
        ),
      ),
    );
  } // Termina _textFieldPassword

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.all(30),
      child: ElevatedButton(
        onPressed: _con.goToMap, //metodo que ejecuta la accion rnt
        child: Stack(
          children: [
            Container(
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child:
                        Text('Iniciar Sesión', style: TextStyle(fontSize: 20)),
                  )),
            ),
            Container(
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: CircleAvatar(
                    child: Icon(Icons.arrow_forward_ios),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    radius: 20,
                  ),
                ),
              ),
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black)),
      ),
    );
  }

  Widget _buttonDontHaveAccount() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 30),
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: _con.goToRegisterPage, //metodo que ejecuta la accion rnt

        child: Stack(
          children: [
            Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '¿No tienes cuenta?',
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
              ),
            ),
            Container(
              child: Align(
                alignment: Alignment.centerRight,
              ),
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
      ),
    );
  }
}
