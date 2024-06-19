import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/Photo/PhotoCircle.widget.dart';
import 'package:tf/widgets/head/HeadWidget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.titleColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: HeadWidget(
                    title: "Configuracion",
                    colorT: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    })),
            Expanded(
                child: Container(
                    //margin: EdgeInsets.only(bottom: 91.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              child: PhotoCircle(
                                  height: 100,
                                  width: 100,
                                  image: Image.network(
                                      fit: BoxFit.cover,
                                      "https://www.upc.edu.pe/static/img/logo_upc_red.png")),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Luis Perez",
                              style: TextStyle(
                                  color: Config.titleColor,
                                  fontFamily: Config.poppingSemiBold,
                                  fontSize: 16.0),
                            ),
                          ),
                          SizedBox(height:27.0 ,),
                          Texto("Contraseña"),
                          Texto("Touch ID"),
                          Texto("Idiomas"),
                          Texto("Informacion de aplicacion"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Texto("Atencion al cliente"),
                              const Text(
                                "19008989",
                                style: TextStyle(
                                    color: Color(0xFF979797),
                                    fontFamily: Config.poppingSemiBold,
                                    fontSize: 12.0),
                              )
                            ],
                          )
                        ],
                      ),
                    )))
          ]),
    );
  }

  Widget Texto(String txt) {
    Widget body = Container(
      margin: EdgeInsets.only(bottom: 28.0),
      child: Text(
        txt,
        style: TextStyle(
            color: Config.subTitleColor,
            fontFamily: Config.poppingMedium,
            fontSize: 16.0),
      ),
    );
    return body;
  }
}
