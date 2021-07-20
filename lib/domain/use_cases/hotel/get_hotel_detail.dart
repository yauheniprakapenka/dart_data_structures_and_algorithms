import 'dart:convert';

import 'package:skillbox_http/data/api/hotels/models/hotel_detail/hotel_detail.dart';
import 'package:http/http.dart';

HotelDetailDTO getHotelDetail(Response response) {
  final decodedJson = jsonDecode(response.body);
  return HotelDetailDTO.fromJson(decodedJson);
}
