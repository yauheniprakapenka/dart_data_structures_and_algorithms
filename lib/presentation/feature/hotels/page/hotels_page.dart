import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillbox_http/data/api/hotels/models/hotel/hotel.dart';
import 'package:skillbox_http/data/api/hotels/use_cases/fetch_hotels.dart';
import 'package:skillbox_http/domain/use_cases/hotel/get_hotels.dart';
import 'package:skillbox_http/domain/utils/exception_handler.dart';
import 'package:skillbox_http/presentation/core/constants/strings/error.dart';
import 'package:skillbox_http/presentation/core/style/app_padding.dart';
import 'package:skillbox_http/presentation/core/style/ui_helper.dart';
import 'package:skillbox_http/presentation/widgets/cards/square_card.dart';
import 'package:skillbox_http/presentation/widgets/cards/rectangle_card.dart';
import 'package:http/http.dart';

part '../components/cards/rectangle_cards.dart';
part '../components/cards/cards_builder.dart';
part '../components/cards/square_cards.dart';
part '../components/text/error_text.dart';
part '../components/text/default_text.dart';

enum CardView {
  rectangle,
  square,
}

class HotelsPage extends StatefulWidget {
  @override
  _HotelsPageState createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  var _cardView = ValueNotifier<CardView>(CardView.square);

  @override
  void dispose() {
    _cardView.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              _cardView.value = CardView.rectangle;
            },
          ),
          IconButton(
            icon: Icon(Icons.grid_view),
            onPressed: () {
              _cardView.value = CardView.square;
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPadding.cardPadding,
          right: AppPadding.cardPadding,
        ),
        child: _buildCards(_cardView),
      ),
    );
  }
}
