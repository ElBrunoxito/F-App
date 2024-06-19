import 'package:flutter/material.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';
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
            child: Column(
              children: [
                Form()
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget Form() {
    Widget form = Column(
      children: [
        /*
        TextInput(
            hintText: "Monto",
            controller: montoController,
            textInputType: TextInputType.number,
          ),
          TextInput(
            hintText: "Dias",
            controller: diasController,
            textInputType: TextInputType.number,
          ),
          
          
          
          
          TextInput(
            hintText: "Porcentaje ex: 10",
            controller: porcentajeController,
            textInputType: TextInputType.number,
          ),
*/
        ComboBoxInput(controller: tasaController),
        MyButton(
          onPressed: () {
            print(tasaController.text);
          },
          texto: "Confirmar",
          camposRellenos: true,
        )
      ],
    );

    return form;
  }
}
