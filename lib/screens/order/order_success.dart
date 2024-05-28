import 'package:flutter/material.dart';
import 'package:hotel_app/themes/hotel_app_theme.dart';
import 'package:hotel_app/widgets/general/app_bar.dart';
import 'package:hotel_app/widgets/general/custom_titles.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  String selectedPaymentMethod = "paynow";

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: HotelAppTheme.buildLightTheme(),
        child: Container(
          child: Scaffold(
            backgroundColor: HotelAppTheme.buildLightTheme().canvasColor,
            body: Column(children: <Widget>[
            
              CustomAppBar(title: "Success"),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                child: SizedBox(
                  height: 580,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Icon(Icons.check_circle, color: HotelAppTheme.buildLightTheme().primaryColor, size: 80,),
                      CustomScreenTitle(title: "Order Success"),
                      Text("Your order was placed successfully!")
                    ],),
                  )
                ),
              ),
              Container(
                  width: 220,
                  padding: EdgeInsets.only(top: 12, bottom: 30),
                  child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.home),
                          label: Text("Home")),)
            ]),
          ),
        ));
  }
}
