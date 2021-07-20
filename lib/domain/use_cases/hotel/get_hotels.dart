import 'dart:convert';

import 'package:skillbox_http/data/api/hotels/models/hotel/hotel.dart';
import 'package:http/http.dart';

List<HotelDTO> getHotels(Response response) {
  final Iterable decodedJson = jsonDecode(response.body);

  var hotels = <HotelDTO>[];
  decodedJson.forEach((hotel) {
    final currentHotel = HotelDTO.fromJson(hotel);
    hotels.add(currentHotel);
  });

  return hotels;
}
