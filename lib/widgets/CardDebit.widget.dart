import 'package:flutter/material.dart';
import 'package:debit_credit_card_widget/debit_credit_card_widget.dart';

class CardDebitWidget extends StatelessWidget {
  CardBrand cardBrandD;
  CardDebitWidget({super.key,required this.cardBrandD});
//////Pedir


  @override
  Widget build(BuildContext context) {
    return DebitCreditCardWidget(

      cardType: CardType.debit,
      cardBrand: cardBrandD,
      cardExpiry: "2140",
      color1: Colors.purple,
      showNFC: true,
      cardNumber: "1234567812345678",
      cardHolderName: "Usuario Name",
      width: 327,

      /*backgroundDecorationImage: DecorationImage(
        image: AssetImage
      ),*/
    );
  }
}
