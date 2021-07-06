class TravelPlace {
  final String id;
  final String title;
  final String shortDesc;
  final String longDesc;
  final String image;

  TravelPlace(
      {required this.id,
      required this.title,
      required this.shortDesc,
      required this.longDesc,
      required this.image});

  factory TravelPlace.fromJson(Map<String, dynamic> json) => TravelPlace(
        id: json['id'],
        title: json['title'],
        shortDesc: json['shortDesc'],
        longDesc: json['longDesc'],
        image: json['image'],
      );
}
