import 'package:flutter/material.dart';
import 'package:skillbox_http/data/api/hotels/models/hotel/hotel.dart';
import 'package:skillbox_http/presentation/core/navigation/push_hotel_detail_page.dart';
import 'package:skillbox_http/presentation/core/style/app_padding.dart';
import 'package:skillbox_http/presentation/core/style/app_shadow.dart';
import 'package:skillbox_http/presentation/widgets/buttons/material_button.dart';

class RectangleCard extends StatelessWidget {
  final HotelDTO hotel;

  RectangleCard({
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushHotelDetailPage(context, hotel.uuid);
      },
      child: Container(
        margin: EdgeInsets.all(4),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          boxShadow: AppShadow.shadow,
        ),
        child: Column(
          children: [
            Expanded(
              child: _buildImage(hotel.poster),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppPadding.cardPadding,
              ),
              height: 50,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: _buildName(hotel.name),
                    ),
                    _buildButton(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildButton() {
  return IgnorePointer(
    child: CustomMaterialButton(
      onPressed: () {
        //
      },
    ),
  );
}

Widget _buildName(String name) {
  return Text(
    name,
    style: TextStyle(
      fontSize: 11,
    ),
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  );
}

Widget _buildImage(String poster) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          'assets/images/$poster',
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
