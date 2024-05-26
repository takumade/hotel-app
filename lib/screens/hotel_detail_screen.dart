import 'package:flutter/material.dart';
import 'package:hotel_app/model/hotel_list_data.dart';

import 'package:hotel_app/widgets/general/app_bar.dart';
import '../themes/hotel_app_theme.dart';

class HotelDetailScreen extends StatefulWidget {
  final HotelListData hotel;
   final ScrollController _scrollController = ScrollController();
  
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
                    Expanded(
                      child: NestedScrollView(
                        controller: widget._scrollController,
                        headerSliverBuilder:
                            (BuildContext context, bool innerBoxIsScrolled) {
                          return <Widget>[
                           
                          ];
                        },
                        body: Container(
                          color:
                              HotelAppTheme.buildLightTheme().backgroundColor,
                          child: Text('Hotels Details')
                          ),
                        ),
                      ),
                    
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