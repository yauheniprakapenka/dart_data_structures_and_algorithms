import 'package:flutter/material.dart';
import 'package:skillbox_http/presentation/core/constants/route_name.dart';

void pushHotelDetailPage(BuildContext context, String uuid) {
  Navigator.pushNamed(
    context,
    RouteName.hotelDetailPage,
    arguments: uuid,
  );
}
