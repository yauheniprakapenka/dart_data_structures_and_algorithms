part of '../page/hotel_detail_page.dart';

Widget _buildServiceTitle(HotelDetailDTO hotelDetail) {
  return Column(
    children: [
      UIHelper.verticalPadding,
      Text(
        'Сервисы',
        style: AppTextStyle.header,
      ),
      UIHelper.verticalPadding,
    ],
  );
}

Widget _buildServiceDescription(HotelDetailDTO hotelDetail) {
  var freeService = hotelDetail.services.free;
  var paidService = hotelDetail.services.paid;

  return SingleChildScrollView(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Платные',
                style: AppTextStyle.category,
              ),
              UIHelper.verticalPadding,
              ...paidService
                  .map(
                    (item) => Text(item),
                  )
                  .toList(),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Бесплатно',
                style: AppTextStyle.category,
              ),
              UIHelper.verticalPadding,
              ...freeService.map(
                (item) => Text(item),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
