import 'package:flutter/material.dart';
import 'package:skillbox_http/data/api/hotels/models/hotel_detail/hotel_detail.dart';
import 'package:skillbox_http/data/api/hotels/use_cases/fetch_hotel_detail.dart';
import 'package:skillbox_http/domain/use_cases/hotel/get_hotel_detail.dart';
import 'package:skillbox_http/domain/utils/exception_handler.dart';
import 'package:skillbox_http/presentation/core/constants/strings/error.dart';
import 'package:skillbox_http/presentation/core/style/app_edge_insets_geometry.dart';
import 'package:skillbox_http/presentation/core/style/app_text_style.dart';
import 'package:skillbox_http/presentation/core/style/ui_helper.dart';
import 'package:http/http.dart';

part '../components/description.dart';
part '../components/service.dart';
part '../components/photos.dart';
part '../components/content/hotel_detail.dart';
part '../components/content/failed_result.dart';
part '../components/content/content.dart';
part '../components/text/default_text.dart';

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
      future: fetchHotelDetail(uuid).catchError((onError) {
        throw onError;
      }),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          final exceprion = snapshot.error as Exception;
          final error = exceptionHandler(exceprion);
          return _buildFailedResult(error);
        }

        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Scaffold(
              appBar: AppBar(),
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case ConnectionState.done:
            return _buildContent(
              context: context,
              snapshotData: snapshot.data,
            );
          default:
            return _buildDefaultText();
        }
      },
    );
  }
}
