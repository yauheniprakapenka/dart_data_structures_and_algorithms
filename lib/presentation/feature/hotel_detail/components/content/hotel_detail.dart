part of '../../page/hotel_detail_page.dart';

Widget _buildHotelDetail(
  BuildContext context,
  HotelDetailDTO hotelDetail,
) {
  return Scaffold(
    appBar: AppBar(
      title: FittedBox(
        child: Text('${hotelDetail.name}'),
      ),
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPhotos(context, hotelDetail.photos),
        Expanded(
          child: Padding(
            padding: AppEdgeInsetsGeometry.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDescription('Страна', '${hotelDetail.address.country}'),
                _buildDescription('Город', '${hotelDetail.address.city}'),
                _buildDescription('Улица', '${hotelDetail.address.street}'),
                _buildDescription('Рейтинг', '${hotelDetail.rating}'),
                _buildServiceTitle(hotelDetail),
                Expanded(child: _buildServiceDescription(hotelDetail)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
