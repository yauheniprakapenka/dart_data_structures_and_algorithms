part of '../page/hotel_detail_page.dart';

Widget _buildPhotos(BuildContext context, List<String> photos) {
  final screenSize = MediaQuery.of(context).size;
  final photoWidth = screenSize.width * 0.7;

  return Column(
    children: [
      SizedBox(
        height: 200,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: photoWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/${photos[index]}',
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: 8);
            },
            itemCount: photos.length),
      ),
      UIHelper.verticalPadding,
    ],
  );
}
