part of '../page/hotel_detail_page.dart';

Widget _buildDescription(
  String category,
  String value,
) {
  return Column(
    children: [
      Row(
        children: [
          Text(
            '$category: ',
            style: AppTextStyle.normalContent,
          ),
          Text(
            '$value',
            style: AppTextStyle.boldContent,
          ),
        ],
      ),
      UIHelper.verticalPadding,
    ],
  );
}
