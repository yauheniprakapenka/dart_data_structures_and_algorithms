import 'package:flutter/material.dart';
import 'package:skillbox_http/presentation/core/constants/route_name.dart';
import 'package:skillbox_http/presentation/feature/hotel_detail/page/hotel_detail.dart';
import 'package:skillbox_http/presentation/feature/hotel_list/page/hotel_list_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteName.hotelListPage:
      return MaterialPageRoute(
        builder: (context) {
          return HotelListPage();
        },
      );
    case RouteName.hotelDetailPage:
      return MaterialPageRoute(
        builder: (context) {
          return HotelDetailPage(
            routeSettings: routeSettings,
          );
        },
      );
    default:
      return MaterialPageRoute(
        builder: (context) {
          return HotelListPage();
        },
      );
  }
}
