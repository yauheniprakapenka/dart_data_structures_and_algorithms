part of '../../page/hotel_detail_page.dart';

Widget _buildContent({
  required BuildContext context,
  dynamic snapshotData,
}) {
  final response = snapshotData as Response;
  final statusCode = response.statusCode;
  switch (statusCode) {
    case 200:
      final hotelDetail = getHotelDetail(response);
      return _buildHotelDetail(context, hotelDetail);
    default:
      return _buildFailedResult(ErrorStrings.contentNotAvailable);
  }
}
