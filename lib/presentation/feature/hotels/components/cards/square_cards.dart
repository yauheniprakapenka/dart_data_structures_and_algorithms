part of '../../page/hotels_page.dart';

Widget _buildSquareCards(List<HotelDTO> hotels) {
  return SliverGrid.count(
    crossAxisCount: 2,
    crossAxisSpacing: AppPadding.cardPadding,
    mainAxisSpacing: AppPadding.cardPadding,
    children: List.generate(
      hotels.length,
      (index) => SquareCard(
        hotel: hotels[index],
      ),
    ),
  );
}
