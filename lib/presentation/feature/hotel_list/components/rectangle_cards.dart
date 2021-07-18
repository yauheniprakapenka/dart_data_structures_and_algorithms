part of '../page/hotel_list_page.dart';

Widget _buildRectangleCards(List<HotelDTO> hotels) {
  return SliverGrid.count(
    crossAxisCount: 1,
    crossAxisSpacing: AppPadding.cardPadding,
    mainAxisSpacing: AppPadding.cardPadding,
    childAspectRatio: 1.7,
    children: List.generate(
      hotels.length,
      (index) => RectangleCard(
        hotel: hotels[index],
      ),
    ),
  );
}
