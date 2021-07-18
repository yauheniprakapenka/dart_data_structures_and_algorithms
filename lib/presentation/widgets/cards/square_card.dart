import 'package:flutter/material.dart';
import 'package:skillbox_http/data/api/hotels/models/hotel/hotel.dart';
import 'package:skillbox_http/presentation/core/navigation/push_hotel_detail_page.dart';
import 'package:skillbox_http/presentation/core/style/app_shadow.dart';
import 'package:skillbox_http/presentation/widgets/buttons/material_button.dart';

class SquareCard extends StatelessWidget {
  final HotelDTO hotel;

  SquareCard({
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
            _buildName(hotel.name),
            _buildButton(),
          ],
        ),
      ),
    );
  }
}

Widget _buildButton() {
  return IgnorePointer(
    child: Container(
      width: double.maxFinite,
      child: CustomMaterialButton(
        onPressed: () {},
      ),
    ),
  );
}

Widget _buildName(String name) {
  return Container(
    padding: EdgeInsets.all(8),
    height: 40,
    child: Text(
      name,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 11,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
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
