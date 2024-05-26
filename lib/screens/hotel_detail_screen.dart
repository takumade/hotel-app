import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotel_app/model/hotel_list_data.dart';

import 'package:hotel_app/widgets/general/app_bar.dart';
import '../themes/hotel_app_theme.dart';

class HotelDetailScreen extends StatefulWidget {
  final HotelListData hotel;
  final ScrollController _hotelDetailScrollController = ScrollController();

  HotelDetailScreen({super.key, required this.hotel});

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: HotelAppTheme.buildLightTheme(),
      child: Container(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Column(children: <Widget>[
                  CustomAppBar(title: "Details"),
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                    child: Container(
                                      // color: Colors.yellow,
                                      height: 240, width: 200,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(18.0)),
                                    child: Image(
                                      image: AssetImage(widget.hotel.imagePath),
                                    ),
                                  ),
                                ),
                                Positioned.fill(
                                    top: 160,
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: HotelAppTheme.buildLightTheme()
                                              .colorScheme
                                              .background,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        margin: EdgeInsets.only(
                                            left: 12, right: 12),
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            right: 8,
                                            top: 8,
                                            bottom: 8),
                                        child:
                                            HotelDetailTitle(widget: widget)))
                              ],
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.only(
                            left: 24, right: 24, top: 8, bottom: 16),
                        color: HotelAppTheme.buildLightTheme()
                            .colorScheme
                            .background,
                      )
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelDetailTitle extends StatelessWidget {
  const HotelDetailTitle({
    super.key,
    required this.widget,
  });

  final HotelDetailScreen widget;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(widget.hotel.titleTxt,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      )),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text("4.7")
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black87,
                          ),
                          Text("5 km")
                        ],
                      )
                    ],
                  )
                ]),
              ],
            ),
            Column(
              children: [
                Text("\$55",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text("/night")
              ],
            )
          ],
        ));
  }
}
