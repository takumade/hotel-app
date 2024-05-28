import 'package:flutter/material.dart';
import 'package:hotel_app/themes/hotel_app_theme.dart';
import 'package:hotel_app/widgets/general/app_bar.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: HotelAppTheme.buildLightTheme(),
        child: Container(
          child: Scaffold(
            backgroundColor: HotelAppTheme.buildLightTheme().canvasColor,
            body: Column(children: <Widget>[
              CustomAppBar(title: "Checkout"),
              Expanded(
                  child: ListView(
                children: [

                  ListTile(
                    leading: Icon(Icons.hotel_rounded, color: Colors.black87.withOpacity(0.5)),
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
                            fontSize: 30),
                      ),
                  ),


                  ListTile(
                    leading: Icon(Icons.attach_money_outlined, color: Colors.black87.withOpacity(0.5)),
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
                            fontSize: 30),
                      ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Payment Methods",
                            
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                  ),


                  ListTile(
                    leading: Radio(value: "paynow", groupValue: "paynow", onChanged: (value){},),
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
                    trailing: Icon(Icons.credit_card, color: Colors.black87.withOpacity(0.5))
                  ),
                     ListTile(
                    leading: Radio(value: "stripe", groupValue: "stripe", onChanged: (value){},),
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
                    trailing: Icon(Icons.credit_card, color: Colors.black87.withOpacity(0.5))
                  ),



              
                ],
              )),
                  Container(
                    width: 220,
                      padding: EdgeInsets.only(
                          top: 12,  bottom: 30),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart),
                          label: Text("Checkout")))
            ]),
          ),
        ));
  }
}

class CartItem extends StatelessWidget {
  final String text;
  final String imageUrl;
  final String subtitle;
  final Function() onPressed;

  const CartItem(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 160,
        padding: const EdgeInsets.all(12.0),
        margin: EdgeInsets.only(top: 12, left: 16, right: 16.0),
        decoration: BoxDecoration(
          color: HotelAppTheme.buildLightTheme().colorScheme.background,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // ClipRRect(
                  //     borderRadius: BorderRadius.circular(9.0),
                  //     child: Image.network(
                  //         "https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  //         height: 59,
                  //         fit: BoxFit.cover)),

                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(Icons.date_range,
                                color: Colors.black87.withOpacity(0.5)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              subtitle,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.people,
                              color: Colors.black87.withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 people",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "\$55",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: HotelAppTheme.buildLightTheme().primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "/night",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.normal,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              TextButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red)),
                  icon: Icon(Icons.delete_outline_rounded),
                  label: Text("Remove"))
            ],
          ),
        ),
      ),
    );
  }
}
