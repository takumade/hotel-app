
import 'package:hotel_app/model/cart.dart';
import 'package:hotel_app/model/favorites.dart';
import 'package:hotel_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'navigation/main_navigation.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Cart()),
        ChangeNotifierProvider(create: (_) => Favorites())
      ],
      builder: (context, child) =>MaterialApp(
      title: 'Hotel App',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: NavigationHomeScreen(),
    )
,);
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
