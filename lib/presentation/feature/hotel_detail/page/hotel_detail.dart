import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:skillbox_http/data/api/hotels/models/hotel_detail/hotel_detail.dart';
import 'package:skillbox_http/data/api/hotels/use_cases/get_hotel.dart';
import 'package:skillbox_http/presentation/core/style/app_edge_insets_geometry.dart';
import 'package:skillbox_http/presentation/core/style/app_text_style.dart';
import 'package:skillbox_http/presentation/core/style/ui_helper.dart';
import 'package:http/http.dart';

part '../components/description.dart';
part '../components/service.dart';
part '../components/photos.dart';
part '../components/success_result.dart';
part '../components/failed_result.dart';
part '../components/handle_get_hotel_response.dart';

class HotelDetailPage extends StatelessWidget {
  final RouteSettings routeSettings;

  HotelDetailPage({
    required this.routeSettings,
  })  : assert(routeSettings.arguments != null),
        assert(routeSettings.arguments is String);

  @override
  Widget build(BuildContext context) {
    final uuid = routeSettings.arguments as String;

    return FutureBuilder(
      future: getHotel(uuid),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case ConnectionState.done:
            return _handleGetHotelResponse(
              context: context,
              snapshotData: snapshot.data,
            );
          default:
            return Scaffold();
        }
      },
    );
  }
}
