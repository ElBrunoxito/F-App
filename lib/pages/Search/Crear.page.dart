import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/Photo/PhotoCircle.widget.dart';
import 'package:tf/widgets/buttons/MyButton.widget.dart';
import 'package:tf/widgets/head/HeadWidget.dart';
import 'package:tf/widgets/input/TextInput.widget.dart';

class CrearPage extends StatefulWidget {
  final int id;
  final bool isBusiness;
  const CrearPage({super.key, required this.id, required this.isBusiness});

  @override
  State<CrearPage> createState() => _CrearPageState();
}

class _CrearPageState extends State<CrearPage> {
  bool isBusiness = false;
  bool prosigue = false;
  //dynamic id = 0;

  final TextEditingController montoController = TextEditingController();
  final TextEditingController diasController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isBusiness = widget.isBusiness;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: HeadWidget(
                  title: isBusiness? "Solicitar credíto":"Credito",
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
                  HeadPhoto("Abarrotes El Buen Sabor",
                      "https://elblogdeidiomas.es/wp-content/uploads/2018/03/ingles-de-negocios.png"),
                  form()
                  
                ],
              ),
            ),
          ),
        ]));
  }

  Widget HeadPhoto(String info, String image) {
    Widget head = Column(
      children: [
        (isBusiness
            ? Image.network(
                image,
                fit: BoxFit.cover,
                height: 101.0,
                width: 121.5,
              )

            : PhotoCircle(
                height: 86.0,
                width: 86.0,
                image: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              )),
        const SizedBox(height:30.0 ,),
        Text(info,style: TextStyle(color: Config.subTitleColor, fontFamily: Config.poppingSemiBold, fontSize: 20.0),)
      ],
    );

    return head;
  }

  Widget form() {
    Widget form = Container(
      height: 402.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
          MyButton(
            onPressed: () {
      
            },
            texto: "Confirmar",
            camposRellenos: prosigue,
          )
        ],
      ),
    );

    return form;
  }
}
