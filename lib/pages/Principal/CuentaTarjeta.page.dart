import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/Photo/PhotoCircle.widget.dart';
import 'package:tf/widgets/buttons/ButtonCuenta.widget.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';
import 'package:tf/widgets/cardDebit.widget.dart';
import 'package:tf/widgets/head/HeadWidget.dart';
import 'package:tf/widgets/input/TextInput.widget.dart';
import 'package:tf/widgets/input/TextInputTitle.widget.dart';

class CuentaTarjetaPage extends StatefulWidget {
  const CuentaTarjetaPage({super.key});

  @override
  State<CuentaTarjetaPage> createState() => _CuentaTarjetaPageState();
}

class _CuentaTarjetaPageState extends State<CuentaTarjetaPage> {
  int botonPress = 0;

  final List<CardDebitWidget> tarjetas = [];

  //Controladores de inputs
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController dniController = TextEditingController();
  final TextEditingController direccionController = TextEditingController();
  final TextEditingController telefonoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  bool isBusiness = false;

  @override
  void initState() {
    super.initState();
    setCamposEntity();
  }

  void setCamposEntity() {
    nombreController.text = "Luis Perez";
    dniController.text = "06761345";
    direccionController.text = "Av. San Luis N°1245";
    telefonoController.text = "963574281";
    emailController.text = "luisp08@gmail.com";
  }

  Widget EditarCuentaView() {
    //Objeto con los datos del usuario
    //User

    bool editCorrecto = false;

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              const SizedBox(
                height: 18.0,
              ),
              Container(
                child: PhotoCircle(
                    height: 100,
                    width: 100,
                    image: Image.network(
                        fit: BoxFit.cover,
                        "https://www.upc.edu.pe/static/img/logo_upc_red.png")),
              ),
              Text(
                "Datos",
                style: TextStyle(
                    color: Config.titleColor,
                    fontFamily: Config.poppingSemiBold,
                    fontSize: 16.0),
              ),
              TextInputTitle(
                  text: isBusiness ? "Nombre de Empresa" : "Nombre",
                  child: TextInput(
                    hintText: isBusiness ? "Nombre de Empresa" : "Nombre",
                    controller: nombreController,
                    textInputType: TextInputType.name,
                  )),
              const SizedBox(
                height: 7.0,
              ),
              TextInputTitle(
                  text: isBusiness ? "RUC" : "DNI",
                  child: TextInput(
                    hintText: isBusiness ? "RUC" : "DNI",
                    controller: dniController,
                    textInputType: TextInputType.number,
                  )),
              const SizedBox(
                height: 7.0,
              ),
              TextInputTitle(
                text: "Direccion",
                child: TextInput(
                  hintText: "Direccion",
                  controller: direccionController,
                  textInputType: TextInputType.streetAddress,
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              TextInputTitle(
                text: "Telefono",
                child: TextInput(
                  hintText: "Telefono",
                  controller: telefonoController,
                  textInputType: TextInputType.phone,
                ),
              ),
              const SizedBox(
                height: 7.0,
              ),
              TextInputTitle(
                text: "Email",
                child: TextInput(
                  hintText: "Email",
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 106.0),
                child: MyButton(
                  onPressed: () {},
                  texto: "Editar",
                  camposRellenos: editCorrecto,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget TarjetaWidgetView() {
    return Column(
      children: [
        Container(
          height: 510.0,
          child: (tarjetas.isNotEmpty)
              ? ListView.separated(
                  //Pedir desde service
                  itemCount: tarjetas.length,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 204, width: 327, child: tarjetas[index]);
                  },

                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 24.0,
                    ); // Separador entre elemento
                  },
                )
              : const Center(
                  child: Text("No tiene tarjetas, presiona para agregar una."),
                ),
        ),
        MyButton(
          onPressed: () {},
          texto: "Agregar tarjeta",
          camposRellenos: true,
        )
      ],
    );
  }

  Widget manejadorButtons() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ButtonCuentaTarjeta(
                onPressed: () {
                  setState(() {
                    botonPress = 0;
                  });
                },
                texto: "Cuenta",
                estaAqui: (botonPress == 0) ? true : false),
            ButtonCuentaTarjeta(
                onPressed: () {
                  setState(() {
                    botonPress = 1;
                  });
                },
                texto: "Tarjeta",
                estaAqui: (botonPress == 1) ? true : false)
          ],
        ),
        //SizedBox(height: 24.0),
        (botonPress == 0) ? EditarCuentaView() : TarjetaWidgetView()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: HeadWidget(
                    title: "Cuenta",
                    colorT: Color(0xFF343434),
                    onPressed: () {
                      Navigator.pop(context);
                    })),
            Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(
                        top: 23.0, left: 24.0, right: 24.0),
                    child: SingleChildScrollView(child: manejadorButtons())

                    //Botones controladores page view
                    //ListView builder para tarjetas
                    //Botton e agregar nueva tarjeta
                    ))
          ]),
    );
  }
}
