import 'package:fl_components/themes/app_themes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);
  @override
  
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: _page(),
    );
  }

  Widget _page() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Card(
          elevation: 5, // Agrega una sombra a la card
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppTheme.primary, width: 2),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Icon (Icons.person, color: AppTheme.primary, size: 40),
                  ],
                ),
                const SizedBox(height: 20),
                _inputField("Nombre de Usuario", usernameController),
                const SizedBox(height: 10),
                _inputField("Contraseña", passwordController, isPassword: true),
                const SizedBox(height: 10),
                _inputField("Rol", roleController),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: _loginBtn("Iniciar Sesión"),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row  (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                   const  Text  (
                      "¿No tienes una cuenta? ",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child:const  Text(
                        "Regístrate",
                        style: TextStyle(fontSize: 16, color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {bool isPassword = false}) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: AppTheme.imputtColor,
      ),
    );

    return TextField(
      style:const  TextStyle(
        color: AppTheme.imputtColor,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppTheme.imputtColor,
        ),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

Widget _loginBtn(String text) {
  return ElevatedButton(
    onPressed: () {
      debugPrint("Nombre de Usuario: ${usernameController.text}");
      debugPrint("Contraseña: ${passwordController.text}");
      debugPrint("Rol: ${roleController.text}");

    },
    style: AppTheme.loginScreenButtonStyle,
    child: SizedBox(
      width: double.infinity,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    ),
  );
}

}
