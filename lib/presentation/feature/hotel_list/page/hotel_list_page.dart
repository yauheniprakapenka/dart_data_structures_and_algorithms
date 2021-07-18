import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skillbox_http/data/api/hotels/models/hotel/hotel.dart';
import 'package:skillbox_http/data/api/hotels/use_cases/get_hotels.dart';
import 'package:skillbox_http/presentation/core/style/app_padding.dart';
import 'package:skillbox_http/presentation/widgets/cards/square_card.dart';
import 'package:skillbox_http/presentation/widgets/cards/rectangle_card.dart';
import 'package:http/http.dart';

part '../components/rectangle_cards.dart';
part '../components/cards_builder.dart';
part '../components/square_cards.dart';

enum CardView {
  rectangle,
  square,
}

class HotelListPage extends StatefulWidget {
  @override
  _HotelListPageState createState() => _HotelListPageState();
}

class _HotelListPageState extends State<HotelListPage> {
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
      body: _buildCards(_cardView),
    );
  }
}
