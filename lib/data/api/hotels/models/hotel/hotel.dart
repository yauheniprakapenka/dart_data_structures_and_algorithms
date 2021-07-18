class HotelDTO {
  final String uuid, name, poster;

  HotelDTO({
    required this.uuid,
    required this.name,
    required this.poster,
  });

  factory HotelDTO.fromJson(Map<String, dynamic> json) {
    return HotelDTO(
      uuid: json['uuid'],
      name: json['name'],
      poster: json['poster'],
    );
  }
}
