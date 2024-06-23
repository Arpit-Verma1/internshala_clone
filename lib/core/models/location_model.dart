class Location {
  final String string;
  final String link;
  final String country;
  final String region;
  final String locationName;

  Location({
    required this.string,
    required this.link,
    required this.country,
    required this.region,
    required this.locationName,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      string: json['string'] ?? "",
      link: json['link'] ?? "",
      country: json['country'] ?? "",
      region: json['region'] ?? "",
      locationName: json['locationName'] ?? "",
    );
  }
}
