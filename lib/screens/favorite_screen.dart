import 'package:flutter/material.dart';
import 'package:hotel_app/model/favorites.dart';
import 'package:hotel_app/model/hotel.dart';
import 'package:hotel_app/themes/hotel_app_theme.dart';
import 'package:hotel_app/widgets/favorite/fav_hotel_list_view.dart';
import 'package:hotel_app/widgets/general/app_bar.dart';

import 'package:hotel_app/screens/hotel_detail_screen.dart';

import 'package:hotel_app/widgets/home/hotel_list_view.dart';
import 'package:hotel_app/model/cart.dart';
import 'package:hotel_app/model/cart.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<Hotel> hotelList = [];

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);

    hotelList = Provider.of<Cart>(context, listen: false).getHotels();
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  void removeFromFavorites (Hotel hotel){



     // alert the user
    showDialog(context: context, builder: (context) => const AlertDialog(
      title: Text("Removed successfully!") 
    ) );


  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: HotelAppTheme.buildLightTheme(),
        child: Container(
          child: Scaffold(
            backgroundColor: HotelAppTheme.buildLightTheme().canvasColor,
            body: Consumer<Favorites>(
                builder: (context, value, child) => Column(children: <Widget>[
                      CustomAppBar(title: "Favorites"),
                      SizedBox(
                        height: 12,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                            itemCount: value.getFavorites().length,
                            padding: const EdgeInsets.only(top: 8),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, int index) {
                          
                              Hotel hotel = value.getFavorites()[index];
                          
                              return FavoriteItem(
                                hotel: hotel, 
                                removeFromFavorites: removeFromFavorites,);
                          
                    
                            },
                          ),
                        ),
                      ),
                    ])),
          ),
        ));
  }
}

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
    required this.hotel,
    required this.removeFromFavorites
  });

  final Hotel hotel;
  final Function(Hotel) removeFromFavorites;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(3),
          child: Image.asset(hotel.imagePath, width: 80)),
        title: Text(hotel.titleTxt),
        subtitle: Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            SizedBox(
              width: 4,
            ),
            Text(hotel.rating.toString()),
          ],
        ),
        trailing: IconButton(
            onPressed: () => removeFromFavorites(hotel), icon: Icon(Icons.delete)),
        onTap: () {
          Navigator.push<dynamic>(
            context,
            MaterialPageRoute<dynamic>(
              builder: (BuildContext context) =>
                  HotelDetailScreen(hotel: hotel),
            ),
          );
        },
      ),
    );
  }
}
