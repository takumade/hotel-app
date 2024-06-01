import 'package:flutter/material.dart';
import 'package:hotel_app/model/hotel.dart';

class Cart extends ChangeNotifier {


  List<Hotel> userCart = [];



  static List<Hotel> hotelList = <Hotel>[
    Hotel(
      imagePath: 'assets/hotel/meikles.jpg',
      titleTxt: 'Meikles Hotel',
      subTxt: 'Harare, Zimbabwe',
      address: "Third Street, & Jason Moyo Ave, Harare",
      about: "Nestled in the city of sunshine, Hyatt Regency Harare The Meikles offers iconic architecture, charm, luxury, and easy access to major attractions.",
      dist: 2.0,
      reviews: 2534,
      rating: 4.4,
      perNight: 169,
      facilities: ['Pool', 'Wifi', 'Safari', 'Show', 'Free Parking', 'Breakfast']
    ),
    Hotel(
      imagePath: 'assets/hotel/rainbow.jpg',
      titleTxt: 'Rainbow Towers',
      subTxt: 'Harare, Zimbabwe',
      address: "1 Pennefather Ave, Samora Machel Ave, Harare",
      about: "Situated in Zimbabwe's sunny capital Harare, it is a golden icon on the city skyline. The luxurious 304 roomed Rainbow Towers Hotel & International Conference ",
      dist: 4.0,
      reviews: 74,
      rating: 4.1,
      perNight: 200,
       facilities: ['Pool', 'Wifi', 'Safari', 'Show', 'Free Parking', 'Breakfast']
    ),
    Hotel(
      imagePath: 'assets/hotel/hotel_3.png',
      titleTxt: 'Monomotapa Hotel',
      subTxt: 'Harare, Zimbabwe',
      address: " 54 Park Ln, Harare",
      about: "Located 100m from the country's main financial and corporate district and boasting an array of fully equipped conference rooms, ",
      dist: 3.0,
      reviews: 62,
      rating: 4.1,
      perNight: 125,
      facilities: ['Pool', 'Wifi', 'Safari', 'Show', 'Free Parking', 'Breakfast']
    ),
    Hotel(
      imagePath: 'assets/hotel/bronte.jpg',
      titleTxt: 'The Bronte Garden Hotel',
      subTxt: 'Harare, Zimbabwe',
      address: "Baines Ave, Harare",
      about: "Centrally located in the Avenues, within walking distance of downtown Harare, The Bronte offers well appointed rooms and executive suites in an idyllic garden ",
      dist: 7.0,
      reviews: 1682,
      rating: 4.2,
      perNight: 156,
      facilities: ['Pool', 'Wifi', 'Safari', 'Show', 'Free Parking', 'Breakfast']
    ),
    Hotel(
      imagePath: 'assets/hotel/cresta.jpg',
      titleTxt: 'Cresta Lodge',
      subTxt: 'Wembley, London',
      address: "5482+G98, A5, Harare",
      about: "Warm African hospitality. Set in tranquil surroundings on the outskirts of the country's dynamic capital is the beautiful Cresta Lodge - Harare ",
      dist: 2.0,
      reviews: 1682,
      rating: 4.5,
      perNight: 96,
      facilities: ['Pool', 'Wifi', 'Safari', 'Show', 'Free Parking', 'Breakfast']
    ),
  ];

  List<Hotel> getUserCart(){
    return userCart;
  }

   List<Hotel> getHotels(){
    return hotelList;
  }

  void addHotelToCart(Hotel hotel){
    userCart.add(hotel);
    notifyListeners();
  }

  void updateHotel(Hotel oldHotel, Hotel newHotel){
    hotelList.remove(oldHotel);
    hotelList.add(newHotel);
    notifyListeners();
  }

  void removeHotelFromCart(Hotel hotel){
    userCart.remove(hotel);
    notifyListeners();  
  }
}
