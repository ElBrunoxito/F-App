import 'package:flutter/material.dart';
import 'package:tf/pages/Principal/CrearCredito.page.dart';
//import 'package:provider/provider.dart';
//import 'package:tf/config/AuthState.dart';
import 'package:tf/pages/Principal/CuentaTarjeta.page.dart';
import 'package:tf/pages/Auth/Login.page.dart';
import 'package:tf/pages/Principal/Historial.page.dart';
import 'package:tf/pages/PrincipalManage.page.dart';
import 'package:tf/pages/Auth/Register.page.dart';
import 'package:tf/pages/Search/Crear.page.dart';
import 'package:tf/pages/Search/Search.page.dart';
import 'package:tf/pages/Solicitar.page.dart';

void main() {
  /*ChangeNotifierProvider(
    create: (context)=>AuthState(),
    child: MyApp()
  );*/
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trabajo Final',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/search/crear') {
          final args = settings.arguments as Map<String, dynamic>;
          final id = args["id"];
          final isBusiness = args["isBusiness"];
          // Retornar la pantalla que corresponde a '/search/crear'
          return MaterialPageRoute(
            builder: (_) => CrearPage(
              id: id,
              isBusiness: isBusiness,
            ), // Aquí deberías retornar tu widget apropiado
            settings: settings,
          );
        }
        if (settings.name == '/solicitar') {
          final args = settings.arguments as Map<String, dynamic>;
          final title = args["title"];
          final subTitle = args["subTitle"];
          return MaterialPageRoute(
            builder: (_) => SolicitarPage(
              title: title,
              subtitle: subTitle,
            ), // Aquí deberías retornar tu widget apropiado
            settings: settings,
          );
        }

        // Si la ruta no está definida aquí, puedes retornar null o una ruta de error
        return null;
      },
      routes: {
        '/': (context) => PrincipalManagePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/principal': (context) => PrincipalManagePage(),
        '/principal/cuenta': (context) => CuentaTarjetaPage(),

        '/search': (context) => SearchPage(),
        '/historial': (context) => HistorialPage(),

        '/principal/crear-credito': (context) => CrearCreditoPage()
        //'/search/crear/:id':(context) => CrearPage()
      },
      //initialRoute: '/login',
      //home: PrincipalPage()
      //home: PrincipalManagePage(),
      //initialRoute: '/search/solicitar',
      initialRoute: '/principal',
      //home: SolicitarPage(title: "Solicitud exitosa",subtitle: "Has enviado correctamente tu solicitud",),
    );
    //return MySample();
  }
}
