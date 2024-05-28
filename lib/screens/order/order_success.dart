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
            
              CustomAppBar(title: "Checkout"),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                child: SizedBox(
                  height: 580,
                  child: ListView(
                    
                    children: [
                      CustomScreenTitle(title: "Order", top: 0),
                      ListTile(
                        leading: Icon(Icons.hotel_rounded,
                            color: Colors.black87.withOpacity(0.5)),
                        title: Text("Meikles Hotel",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        subtitle: Text(
                          "24 Feb to 24 May (2024) x 3",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Text(
                          "\$55",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: HotelAppTheme.buildLightTheme().primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      Divider(color: Colors.black87.withOpacity(0.2)),
                      ListTile(
                        leading: Icon(Icons.attach_money_outlined,
                            color: Colors.black87.withOpacity(0.5)),
                        title: Text("Total",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        subtitle: Text(
                          "Plus Tax (15%)",
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        trailing: Text(
                          "\$10",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: HotelAppTheme.buildLightTheme().primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                      ),
                      CustomScreenTitle(title: "Payment Methods"),
                      ListTile(
                          leading: Radio<String>(
                            value: "paynow",
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                                print("Button value: $value");
                              });
                            },
                          ),
                          title: Text("Paynow",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          subtitle: Text(
                            "Ecocash, Telecel and OneMoney supported",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          trailing: Icon(Icons.credit_card,
                              color: Colors.black87.withOpacity(0.5))),
                      ListTile(
                          leading: Radio<String>(
                            value: "stripe",
                            groupValue: selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                selectedPaymentMethod = value.toString();
                                print("Button value: $value");
                              });
                            },
                          ),
                          title: Text("Stripe",
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              )),
                          subtitle: Text(
                            "VISA and Mastercard supported",
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          trailing: Icon(Icons.credit_card,
                              color: Colors.black87.withOpacity(0.5))),
                    ],
                  ),
                ),
              ),
              Container(
                  width: 240,
                  padding: EdgeInsets.only(top: 12, bottom: 30),
                  child: Row(
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.money_off_csred),
                          label: Text("Cancel")),
                          SizedBox(width: 10,),
                      ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.attach_money),
                          label: Text("Pay    ")),
                    ],
                  ))
            ]),
          ),
        ));
  }
}
