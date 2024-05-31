import 'package:flutter/material.dart';
import 'package:hotel_app/model/hotel.dart';

class Cart extends ChangeNotifier {


  List<Hotel> userCart = [];



  static List<Hotel> hotelList = <Hotel>[
    Hotel(
      imagePath: 'assets/hotel/hotel_1.png',
      titleTxt: 'The Meikles',
      subTxt: 'Wembley, London',
      address: "Third Street, & Jason Moyo Ave, Harare",
      about: "Nestled in the city of sunshine, Hyatt Regency Harare The Meikles offers iconic architecture, charm, luxury, and easy access to major attractions.",
      dist: 2.0,
      reviews: 80,
      rating: 4.4,
      perNight: 180,
      facilities: ['Swimming Pool', 'Wifi', 'Safari', 'Show']
    ),
    Hotel(
      imagePath: 'assets/hotel/hotel_2.png',
      titleTxt: 'Rainbow Towers',
      subTxt: 'Wembley, London',
      address: "1 Pennefather Ave, Samora Machel Ave, Harare",
      about: "Situated in Zimbabwe's sunny capital Harare, it is a golden icon on the city skyline. The luxurious 304 roomed Rainbow Towers Hotel & International Conference ",
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
      perNight: 200,
       facilities: ['Swimming Pool', 'Wifi', 'Safari', 'Show']
    ),
    Hotel(
      imagePath: 'assets/hotel/hotel_3.png',
      titleTxt: 'Grand Royal Hotel',
      subTxt: 'Wembley, London',
      address: "1 Pennefather Ave, Samora Machel Ave, Harare",
      about: "Situated in Zimbabwe's sunny capital Harare, it is a golden icon on the city skyline. The luxurious 304 roomed Rainbow Towers Hotel & International Conference ",
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
      perNight: 60,
      facilities: ['Swimming Pool', 'Wifi', 'Safari', 'Show']
    ),
    Hotel(
      imagePath: 'assets/hotel/hotel_4.png',
      titleTxt: 'Queen Hotel',
      subTxt: 'Wembley, London',
      address: "1 Pennefather Ave, Samora Machel Ave, Harare",
      about: "Situated in Zimbabwe's sunny capital Harare, it is a golden icon on the city skyline. The luxurious 304 roomed Rainbow Towers Hotel & International Conference ",
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      perNight: 170,
      facilities: ['Swimming Pool', 'Wifi', 'Safari', 'Show']
    ),
    Hotel(
      imagePath: 'assets/hotel/hotel_5.png',
      titleTxt: 'Grand Royal Hotel',
      subTxt: 'Wembley, London',
      address: "1 Pennefather Ave, Samora Machel Ave, Harare",
      about: "Situated in Zimbabwe's sunny capital Harare, it is a golden icon on the city skyline. The luxurious 304 roomed Rainbow Towers Hotel & International Conference ",
      dist: 2.0,
      reviews: 240,
      rating: 4.5,
      perNight: 200,
      facilities: ['Swimming Pool', 'Wifi', 'Safari', 'Show']
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
