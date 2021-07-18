class HotelDetailDTO {
  final String name;
  final double rating;
  final AddressDTO address;
  final ServicesDTO services;
  final List<String> photos;

  HotelDetailDTO({
    required this.name,
    required this.address,
    required this.rating,
    required this.services,
    required this.photos,
  });

  factory HotelDetailDTO.fromJson(Map<String, dynamic> json) {
    final address = AddressDTO.fromJson(json['address']);
    final services = ServicesDTO.fromJson(json['services']);
    final photos = List<String>.from(json['photos']);

    return HotelDetailDTO(
      name: json['name'],
      address: address,
      rating: json['rating'],
      services: services,
      photos: photos,
    );
  }
}

class AddressDTO {
  final String country, city, street;

  AddressDTO({
    required this.city,
    required this.country,
    required this.street,
  });

  factory AddressDTO.fromJson(Map<String, dynamic> json) {
    return AddressDTO(
      city: json['city'],
      country: json['country'],
      street: json['street'],
    );
  }
}

class ServicesDTO {
  final List<String> free;
  final List<String> paid;

  ServicesDTO({
    required this.free,
    required this.paid,
  });

  factory ServicesDTO.fromJson(Map<String, dynamic> json) {
    final free = List<String>.from(json['free']);
    final paid = List<String>.from(json['paid']);

    return ServicesDTO(
      free: free,
      paid: paid,
    );
  }
}
