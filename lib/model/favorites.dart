

import 'package:flutter/material.dart';
import 'package:hotel_app/model/hotel.dart';

class Favorites extends ChangeNotifier {
  List <Hotel> favorites = [];


  void  addToFavories(Hotel hotel) {
    favorites.add(hotel);
    notifyListeners();
  }

  void  removeFromFavories(Hotel hotel) {
    favorites.remove(hotel);
    notifyListeners();
  }
}