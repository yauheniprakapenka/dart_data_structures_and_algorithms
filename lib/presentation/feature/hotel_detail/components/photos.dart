part of '../page/hotel_detail.dart';

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
      // CarouselSlider(
      //   options: CarouselOptions(height: 200.0),
      //   items: photos.map((name) {
      //     return Builder(
      //       builder: (BuildContext context) {
      //         return Container(
      //           width: MediaQuery.of(context).size.width,
      //           margin: EdgeInsets.symmetric(horizontal: 5.0),
      //           child: Container(
      //             width: photoWidth,
      //             decoration: BoxDecoration(
      //               image: DecorationImage(
      //                 fit: BoxFit.cover,
      //                 image: AssetImage(
      //                   'assets/images/$name',
      //                 ),
      //               ),
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   }).toList(),
      // ),
      UIHelper.verticalPadding,
    ],
  );
}
