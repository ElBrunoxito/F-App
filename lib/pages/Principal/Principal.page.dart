import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:tf/config/SvgState.dart';
//import 'package:provider/provider.dart';
//import 'package:tf/config/AuthState.dart';
import 'package:tf/config/config.dart';
import 'package:tf/widgets/cardDebit.widget.dart';
import 'package:tf/widgets/head/HeadWidgetIcon.dart';
import 'package:en_card_swiper/en_card_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrincipalPage extends StatefulWidget {
  const PrincipalPage({super.key});

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  //final auth = Provider.of(AuthState)(context,listen:false);
  //final auth = Provider.of<AuthState>(context, listen: false);
  //auth.setUserRole(rolDelUsuarioDesdeElBackend);
  //auth.setAuthToken(tokenDeAutenticacionDesdeElBackend);

  //Importante para service
  //Servie
  //Service

  final List<CardDebitWidget> tarjetas = [
    CardDebitWidget(
      cardBrandD: CardBrand.mastercard,
    ),
    CardDebitWidget(
      cardBrandD: CardBrand.custom,
    ),
    CardDebitWidget(
      cardBrandD: CardBrand.mastercard,
    ),
  ];

  String user = "Usuario";

  /*Widget DebitTarjet(){
    return 
  }*/

  Widget Cards() {
    return Center(
      child: SizedBox(
        height: 221,
        child: ENSwiper(
          axisDirection: AxisDirection.left,
          pagination: const ENSwiperPagination(
            margin: EdgeInsets.all(10.0),
          ),
          itemCount: tarjetas.length,
          itemWidth: 327.0,
          autoplay: true,
          duration: 500,
          layout: SwiperLayout.STACK,
          itemBuilder: (context, index) {
            return Container(
              //padding: const EdgeInsets.only(bottom: 20.0),
              //margin: const EdgeInsets.only(bottom: 20.0),
              child: tarjetas[index],
            );
          },
        ),
      ),
    );
  }

  Widget Option(String svgData, String text, Function onPressed) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                onPressed();
              },
              icon: SvgPicture.string(
                svgData,
                width: 28.00,
                height: 28.00,
              )),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Config.textColorIconButton,
                fontFamily: Config.poppingMedium,
                fontSize: 12.0),
          )
        ],
      ),
    );
  }

  Widget Options() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 63.0, ),
        /*child: Container(
          height: 253,
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 53.0,
            crossAxisSpacing: 49.0,
            children: [
              Option(SvgState.svgUno, "Cuenta y tarjeta", () {
                Navigator.pushNamed(context, '/principal/cuenta');
              }),
              Option(SvgState.svgDos, "Historial de pagos", () {
                Navigator.pushNamed(context, '/historial');
              }),
              Option(SvgState.svgTres, "Pagar Servicios", () {
                Navigator.pushNamed(context, 'principal/crear-credito');
              }),
              Option(SvgState.svgCuatro, "Transaccion", () {}),
            ],
          ),
        )*/
      child: Container(
        //flex: 1,
        height: 253,
        width: 270,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Option(SvgState.svgUno, "Cuenta y tarjeta", () {
                Navigator.pushNamed(context, '/principal/cuenta');
              }),
              Option(SvgState.svgDos, "Historial de pagos", () {
                Navigator.pushNamed(context, '/historial');
              }),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
              
              Option(SvgState.svgTres, "Pagar Servicios", () {
                Navigator.pushNamed(context, '/principal/crear-credito');
              }),
              Option(SvgState.svgCuatro, "Transaccion", () {
                Navigator.pushNamed(context, '/solicitar', arguments: {"title":"Solicitud exitosa","subTitle":"Has enviado correctamente tu solicitud"});
              }),],),            

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.titleColor,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: HeadWidgetIcon(
                  title: "Hola, " + user,
                  notificationsCount: 3,
                  image: "https://www.upc.edu.pe/static/img/logo_upc_red.png",
                  onPressed: () {
                    Navigator.pushNamed(context, 'principal/cuenta');
                    //Navigator.pop(context);
                  }),
            ),
            Expanded(
                //expaded modificar si es
                //necesario para el bototm
                //app bar
                child: Container(
                    //margin: EdgeInsets.only(bottom: 91.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: 17.0, left: 17.0, top: 24.0, bottom: 63),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Cards(),
                          const SizedBox(
                            height: 40.0,),
                          Options()
                          

                          //Option(svgUno, "Cuenta y tarjeta", (){})
                        ],
                      ),
                    )))
          ]
          //bottomNavigationBar: BottomNavBarFb2(),
          //
          //bottomNavigationBar:
          ),
    );
  }
}

////
///
///

//- - - - - - - - - Instructions - - - - - - - - - - - - - - - - - -
//
// Default Widget call (instantiation):
//  - CreditCard(onTopRightButtonClicked: () {}, cardIcon: Image.network("https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/mastercard.png?alt=media&token=1ae51e14-5a60-4dbf-8a42-47cb9c3c1dfe",  width: 50,))
//
// Coming Soon:
//  - integration into a a card stack
//
//- - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -
