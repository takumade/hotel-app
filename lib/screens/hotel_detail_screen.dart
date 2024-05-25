import 'package:flutter/material.dart';
import 'package:hotel_app/model/hotel_list_data.dart';

class HotelDetailScreen extends StatefulWidget {
  final HotelListData hotel;
  
  HotelDetailScreen({super.key, required this.hotel});

  @override
  State<HotelDetailScreen> createState() => _HotelDetailScreenState();
}

class _HotelDetailScreenState extends State<HotelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.hotel.titleTxt);
  }
}