class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;
  var coords = new List(2);
  double rating;
  int vote;


  TourismPlace({
    this.name,
    this.location,
    this.description,
    this.openDays,
    this.openTime,
    this.ticketPrice,
    this.imageAsset,
    this.imageUrls,
    this.coords,
    this.rating,
    this.vote,
  });
}