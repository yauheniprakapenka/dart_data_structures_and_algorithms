part of '../../page/hotel_detail_page.dart';

Widget _buildFailedResult(String error) {
  return Scaffold(
    appBar: AppBar(),
    body: Center(
      child: Text(error),
    ),
  );
}
