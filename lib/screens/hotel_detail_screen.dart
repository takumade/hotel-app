import 'package:flutter/material.dart';
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
                child: Column(
                  children: <Widget>[
                    CustomAppBar(),
                    Container(
                            padding: const EdgeInsets.only(
                                left: 24, right: 24, top: 8, bottom: 16),
                            color:
                                HotelAppTheme.buildLightTheme().backgroundColor,
                            child: Column(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  child: Image(image: AssetImage(widget.hotel.imagePath),),),

                                  ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                                  child: Row(
                                    children: [

                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [ Text(widget.hotel.titleTxt,  textAlign: TextAlign.left, style: TextStyle(
                                               
                                                fontWeight: FontWeight.w600,
                                                fontSize: 22,
                                              )), 
                                              Row(
                                                children: [
                                                Row(
                                                children: [
                                                  Icon(Icons.star, color: Colors.amber,),
                                                  Text("4.7")
                                                ],
                                              ),
                                               Row(
                                                children: [
                                                  Icon(Icons.location_on,),
                                                  Text("5 km")
                                                ],
                                              )],
                                              )
                                              
                                              ]
                                      )
                                    ],
                                  ))



                            ],)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
