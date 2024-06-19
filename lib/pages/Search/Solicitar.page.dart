import 'package:flutter/material.dart';
import 'package:tf/widgets/body/BodySuccess.widget.dart';
import 'package:tf/widgets/head/HeadWidget.dart';

class SolicitarPage extends StatefulWidget {
  const SolicitarPage({super.key});

  @override
  State<SolicitarPage> createState() => _SolicitarPageState();
}

class _SolicitarPageState extends State<SolicitarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: HeadWidget(
                  title: "Solicitar credito",
                  colorT: Color(0xFF343434),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
          const Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 49.0),
                child: BodySuccessWidget(bodyText: "Has enviado correctamente tu solicitud")
          ),
        )
        ]));
  }


}
