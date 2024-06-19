import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/Photo/PhotoCircle.widget.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';
import 'package:tf/widgets/checkbox/CheckBoxTextNormal.dart';
import 'package:tf/widgets/head/HeadWidget.dart';
import 'package:tf/widgets/input/ComboBoxInput.widget.dart';
import 'package:tf/widgets/input/TextInput.widget.dart';

class CrearCreditoPage extends StatefulWidget {
  const CrearCreditoPage({super.key});

  @override
  State<CrearCreditoPage> createState() => _CrearCreditoPageState();
}

class _CrearCreditoPageState extends State<CrearCreditoPage> {
  //Cliente
  int idCliente = 0;

  TextEditingController tasaController = TextEditingController();
  TextEditingController montoController = TextEditingController();
  TextEditingController diasController = TextEditingController();
  TextEditingController porcentajeController = TextEditingController();
  TextEditingController diasMoratorioController = TextEditingController();
  TextEditingController porcentajeMoratorioController = TextEditingController();

  bool camposRellenos = false;
  bool isMoratorio = false;
  String montoTotal = "----";
  String image = "https://www.upc.edu.pe/static/img/logo_upc_red.png";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //this.idCliente = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: HeadWidget(
                title: "Crear credito",
                colorT: Color(0xFF343434),
                onPressed: () {
                  Navigator.pop(context);
                })),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 49.0),
            //child: Text("Texto" + widget.id.toString())
            child: Form(),
              
          ),
        ),
      ]),
    );
  }

  Widget Form() {
    Widget form = Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        photo("Jorge manuel", image),
        TextInput(
          hintText: "Monto",
          controller: montoController,
          textInputType: TextInputType.number,
        ),
        TextInput(
          hintText: "Dias",
          controller: diasController,
          textInputType: TextInputType.numberWithOptions(decimal: true),
        ),
        ComboBoxInput(
            controller: tasaController, hintText: "Selecciona una tasa"),
        TextInput(
          hintText: "Porcentaje",
          controller: porcentajeController,
          textInputType: TextInputType.number,
        ),
        CheckBoxTextNormal(
            text: "Interes moratorio",
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            onChanged: () {
              setState(() {
                isMoratorio = !isMoratorio;
              });
            }),

        isMoratorio? TextInput(
          hintText: "Dias",
          controller: diasMoratorioController,
          textInputType: TextInputType.numberWithOptions(decimal: true),
        ):SizedBox.shrink(),
        isMoratorio?TextInput(
          hintText: "Porcentaje",
          controller: porcentajeMoratorioController,
          textInputType: TextInputType.number,
        ):SizedBox.shrink(),
        //Monto total
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Monto total" + montoTotal,
                style: TextStyle(
                    fontFamily: Config.poppingMedium,
                    fontSize: 14.0,
                    color: Config.subTitleColor),
              ),
            ],
          ),
        ),
        MyButton(
          onPressed: () {
            //Solo si campos rellenos se cumple esta funcion
                    
          },
          texto: "Confirmar",
          camposRellenos: camposRellenos,
        )
      ],
    );

    return form;
  }

  Widget photo(String text, String urlimage) {
    return Column(
      children: [
        PhotoCircle(
          height: 86.0,
          width: 86.0,
          image: Image.network(
            urlimage,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          text,
          style: TextStyle(
              color: Config.subTitleColor,
              fontFamily: Config.poppingSemiBold,
              fontSize: 20.0),
        )
      ],
    );
  }
}
