import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/TitleLogInSing/TitleSubTitleWidget.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';
import 'package:tf/widgets/head/HeadWidget.dart';
import 'package:tf/widgets/input/TextInput.widget.dart';
import 'package:tf/widgets/input/TextInputPassword.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController dniController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool camposRellenos = false;
  var font = GoogleFonts.poppins().fontFamily;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dniController.addListener(actualizarEstado);
    passwordController.addListener(actualizarEstado);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    dniController.dispose();
    passwordController.dispose();
  }

  void actualizarEstado() {
    String dniText = dniController.text;
    String passwordText = passwordController.text;
    if (dniText.isEmpty || passwordText.isEmpty) {
      return;
    }
    if (dniText.length == 8 && passwordText.length > 8) {
      camposRellenos = true;
    } else {
      camposRellenos = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.titleColor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*
              Container(
                height: 93.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: Text("Iniciar Sesión"),
              ),*/
              HeadWidget(
                  title: "Iniciar Sesión",
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Expanded(
                child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: Colors.white),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            TitleSubTitleWidget(
                              title: "Bienvenido de nuevo",
                              subtitle: "Hola, Inicia sesion para continuar",
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        Image.asset(
                          'assets/images/image.jpg',
                          width: 213.0,
                          height: 165.0,
                        ),
                        const SizedBox(
                          height: 32.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                                hintText: "DNI",
                                controller: dniController,
                                textInputType: TextInputType.number,
                                ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            //password

                            TextInputPassword(
                              hintText: "Contraseña",
                              controller: passwordController,
                              iconColor: Colors.grey,
                            ),

                            const SizedBox(
                              height: 12.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                //
                                //Logica para olvidar tu contraseña
                                //
                                print("presiono olvidaste contraseña");
                              },
                              child: const Text(
                                "Olvidaste tu contraseña",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Color(0xFF3629B7),
                                    fontFamily: "PoppinsMedium",
                                    fontSize: 12.0),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        MyButton(
                            camposRellenos: camposRellenos,
                            onPressed: () {
                              //Logica para iniciar sesion
                              //Service Controler
                              actualizarEstado();
                              print("Iniciando sesion si es correto");
                              //
                            },
                            texto: "Iniciar Sesión"),
                        const SizedBox(
                          height: 114.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "No tengo cuenta",
                              style: TextStyle(
                                  fontFamily: "PoppinsRegular",
                                  fontSize: 12.0,
                                  color: Color(0xFF343434)),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                //Logica para Registrarme
                                //Logica para Registrarme
                                //Logica para Registrarme
                                Navigator.pushNamed(context, '/register');
                              },
                              child: const Text(
                                "Registrarme",
                                style: TextStyle(
                                    fontFamily: "PoppinsSemiBold",
                                    fontSize: 12.0,
                                    color: Color(0xFF3629B7)),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
