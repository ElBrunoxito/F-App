import 'package:flutter/material.dart';
import 'package:tf/config/config.dart';
import 'package:tf/model/DetalleHistorial.dart';
import 'package:intl/intl.dart';

class DetailsWidget extends StatelessWidget {
  final DetalleHistorial detalleHistorial;
  const DetailsWidget({super.key, required this.detalleHistorial});

  @override
  Widget build(BuildContext context) {
    String fechaFormat = DateFormat('dd/MM/yyyy').format(detalleHistorial.date);
    String estatus = detalleHistorial.status;
    String mes = detalleHistorial.month;
    String monto = detalleHistorial.amount.toString();

    return Container(
      height: 88.0,
      width: 327.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(mes,style: TextStyle(color: Colors.black,fontFamily: Config.poppingSemiBold,fontSize: 16.0),), 
                Text(fechaFormat,style: TextStyle(color: Config.textColorIconButton,fontFamily: Config.poppingSemiBold,fontSize: 12.0))]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //Text("Status" + detalleHistorial.status),

            Text.rich(
              TextSpan(
                text: "Status ",
                style: TextStyle(
                  fontFamily: Config.poppingMedium,
                  fontSize: 12,
                  color: Config.textColorIconButton,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: estatus,
                    style: TextStyle(
                        fontFamily: Config.poppingSemiBold,
                        fontSize: 12,
                        color: estatus == "Successfully"
                            ? Config.textHistoryBlueColor
                            : Config.textHistoryRedColor),
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: "Amount  ",
                style: TextStyle(
                  fontFamily: Config.poppingMedium,
                  fontSize: 12,
                  color: Config.textColorIconButton,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "\$"+monto.toString(),
                    style: TextStyle(
                        fontFamily: Config.poppingSemiBold,
                        fontSize: 12,
                        color: Config.textHistoryBlueColor),
                  ),
                ],
              ),
            ),
          ])
        ],
      ),
    );
  }
}
