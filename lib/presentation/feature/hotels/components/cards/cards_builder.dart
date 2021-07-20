part of '../../page/hotels_page.dart';

Widget _buildCards(ValueNotifier<CardView> cardView) {
  return FutureBuilder(
    future: fetchHotels().catchError((onError) {
      throw onError;
    }),
    builder: (context, snapshot) {
      if (snapshot.hasError) {
        final exception = snapshot.error as Exception;
        final error = exceptionHandler(exception);
        return _buildErrorText(error);
      }

      switch (snapshot.connectionState) {
        case ConnectionState.waiting:
          return UIHelper.progressIndicator();
        case ConnectionState.done:
          final snapshotData = snapshot.data;

          if (snapshotData == null)
            return _buildErrorText(ErrorStrings.errorGettingHotels);

          final response = snapshotData as Response;
          final hotels = getHotels(response);

          return CustomScrollView(
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
                      return _buildDefaultText();
                  }
                },
              ),
            ],
          );
        default:
          return _buildDefaultText();
      }
    },
  );
}
