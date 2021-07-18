part of '../page/hotel_list_page.dart';

Widget _buildCards(ValueNotifier<CardView> cardView) {
  return FutureBuilder(
    future: getHotels(),
    builder: (context, snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.waiting:
          return Center(
            child: CircularProgressIndicator(),
          );
        case ConnectionState.done:
          final response = snapshot.data as Response;
          final Iterable responseBody = jsonDecode(response.body);

          var hotels = <HotelDTO>[];
          responseBody.forEach((hotel) {
            final currentHotel = HotelDTO.fromJson(hotel);
            hotels.add(currentHotel);
          });

          return Padding(
            padding: EdgeInsets.only(
              left: AppPadding.cardPadding,
              right: AppPadding.cardPadding,
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 12)),
                ValueListenableBuilder(
                  valueListenable: cardView,
                  builder: (context, value, child) {
                    switch (value) {
                      case CardView.square:
                        return _buildSquareCards(hotels);
                      case CardView.rectangle:
                        return _buildRectangleCards(hotels);
                      default:
                    }
                    return Text('');
                  },
                ),
              ],
            ),
          );
        default:
      }
      return Text('');
    },
  );
}
