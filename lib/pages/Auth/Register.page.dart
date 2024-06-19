import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/TitleLogInSing/TitleSubTitleWidget.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';
import 'package:tf/widgets/checkbox/CheckBox.widget.dart';
import 'package:tf/widgets/checkbox/CheckBoxTextNormal.dart';
import 'package:tf/widgets/head/HeadWidget.dart';
import 'package:tf/widgets/input/TextInput.widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:tf/widgets/input/TextInputPassword.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController dniController = TextEditingController();
  final TextEditingController direccionController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contrasenaController = TextEditingController();

  final bool camposCorrectos = false;
  bool soyEmpresa = false;

  bool terminosCondicionesActive = false;


 void verificarCampos() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.titleColor,
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HeadWidget(
                      title: "Registro",
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
                          height: 28.58,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            TitleSubTitleWidget(
                              title: "Bienvenido",
                              subtitle: "Hola, crear una cuenta",
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 18.64,
                        ),
                        Image.asset(
                          'assets/images/register.jpg',
                          width: 213.0,
                          height: 156.53,
                        ),
                        const SizedBox(
                          height: 26.47,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 16.0,
                            ),
                            CheckBoxTextNormal(
                              padding: EdgeInsets.symmetric(horizontal: 30.0),
                              onChanged: () {
                                //Cambiar los placeholders
                                setState(() {
                                  soyEmpresa = !soyEmpresa;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextInput(
                              hintText:
                                  soyEmpresa ? "Nombre de Empresa" : "Nombre",
                              controller: nombreController,
                              textInputType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextInput(
                              hintText: soyEmpresa ? "RUC" : "DNI",
                              controller: dniController,
                              textInputType: TextInputType.number,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextInput(
                              hintText: "Direccion",
                              controller: direccionController,
                              textInputType: TextInputType.streetAddress,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextInput(
                              hintText: "Telefono",
                              controller: telefonoController,
                              textInputType: TextInputType.phone,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextInput(
                              hintText: "Email",
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextInputPassword(
                              hintText: "Contraseña",
                              controller: contrasenaController,
                              textInputType: TextInputType.text,
                              iconColor: Colors.grey,
                            
                            ),
                            terminosCondicionesActive
                                ? Container(
                                    margin:
                                        EdgeInsets.symmetric(vertical: 16.0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD9D9D9),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: DottedBorder(
                                          color: Colors.black,
                                          strokeWidth: 3.0,
                                          dashPattern: [6, 3],
                                          padding: EdgeInsets.all(2.0),
                                          child: Container(
                                            width: 322,
                                            height: 153,
                                            child: const Text(
                                              "Tu contraseña debe tener al menos 8 caracteres e incluir una combinación de letras mayúsculas, letras minúsculas, números y símbolos especiales. Evita usar información personal o secuencias fáciles de adivinar. Para mayor seguridad, utiliza una contraseña única para cada cuenta y considera el uso de un gestor de contraseñas.",
                                              overflow: TextOverflow.visible,
                                              style: TextStyle(
                                                  fontFamily: 'PoppinsLight',
                                                  fontSize: 10.0,
                                                  height: 2.5),
                                            ),
                                          )),
                                    ),
                                  )
                                : const SizedBox(
                                    height: 8.0,
                                  ),
                            CheckBoxWidget(function: () {
                              setState(() {
                                terminosCondicionesActive = true;
                              });
                            }),
                            const SizedBox(
                              height: 21.0,
                            ),
                            MyButton(
                              onPressed: () {},
                              texto: "Registrarse",
                              camposRellenos: camposCorrectos,
                            ),
                            const SizedBox(
                              height: 21.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Tengo cuenta :)",
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
                                    //Logica para Iniciar Sesion
                                    //Logica para Iniciar Sesion
                                    //Logica para Iniciar Sesion
                                    //Logica para Iniciar Sesion
                                    //Logica para Iniciar Sesion
                                    //Logica para Iniciar Sesion
                                    //Logica para Iniciar Sesion
                                    Navigator.pushNamed(context, '/login');
                                  },
                                  child: const Text(
                                    "Iniciar Sesión",
                                    style: TextStyle(
                                        fontFamily: "PoppinsSemiBold",
                                        fontSize: 12.0,
                                        color: Color(0xFF3629B7)),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 23.29,
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
