


class Hotel {

  final String imagePath;
  final String titleTxt;
  final String subTxt;
  final double dist;
  final double rating;
  final int reviews;
  final List<String> facilities;
  final String about;
  final String address;
  DateTime? startDate;
  DateTime? endDate;
  int? people;
  final int perNight;

  Hotel({required this.imagePath, required this.titleTxt, required this.subTxt, required this.dist, required this.rating, required this.reviews, required this.facilities, required this.about, required this.address, required this.perNight});

}