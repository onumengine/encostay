import 'package:encostay/ui/molecules/search_result_card.dart';
import 'package:flutter/material.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(left: 18, right: 25),
          children: <Widget>[
            SearchResultCard(),
          ],
        ),
      ),
    );
  }
}
