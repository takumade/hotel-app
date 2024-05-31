


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
  final String? date;
  final int? people;
  final int perNight;

  Hotel(this.facilities, this.about, this.address, this.date, this.people, {required this.imagePath, required this.titleTxt, required this.subTxt, required this.dist, required this.rating, required this.reviews, required this.perNight});

}