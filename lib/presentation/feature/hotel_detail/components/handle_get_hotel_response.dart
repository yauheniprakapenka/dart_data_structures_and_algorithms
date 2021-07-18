part of '../page/hotel_detail.dart';

Widget _handleGetHotelResponse({
  required BuildContext context,
  required dynamic snapshotData,
}) {
  final response = snapshotData as Response;
  final statusCode = response.statusCode;
  switch (statusCode) {
    case 200:
      final decodedJson = jsonDecode(response.body);
      final hotelDetail = HotelDetailDTO.fromJson(decodedJson);
      return _buildSuccessResult(context, hotelDetail);
    default:
      return _buildFailedResult();
  }
}
