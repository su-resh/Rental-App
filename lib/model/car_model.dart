class Car {
  final String image;
  final String title;
  final int startProduction;
  final String carClass;
  final int pricePerHour;
  final double rating;
  final String description;
  final String ownerName;
  final String city;

  Car({
    required this.image,
    required this.title,
    required this.startProduction,
    required this.carClass,
    required this.pricePerHour,
    required this.rating,
    required this.description,
    required this.ownerName,
    required this.city,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      image: json['image'],
      title: json['title'],
      startProduction: json['start_production'] ?? 0,
      carClass: json['class'],
      pricePerHour: json['price_per_hour'],
      rating: json['rating'].toDouble(),
      description: json['description'],
      ownerName: json['owner_name'],
      city: json['city'],
    );
  }
}