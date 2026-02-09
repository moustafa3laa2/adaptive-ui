import 'package:flutter/material.dart';

import '../models/explain_card_model.dart';
import 'explain_card.dart';

class CustomListView extends StatelessWidget {
  final Axis scrollDirection;
  const CustomListView({super.key,  this.scrollDirection=Axis.vertical});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: scrollDirection,
      shrinkWrap: true,
      itemCount: explainData.length,
      separatorBuilder: (context, index) =>
      const SizedBox(height: 16,width: 16,),
      itemBuilder: (context, index) {
        final item = explainData[index];

        return ExplainCard(
          icon: item['icon'],
          title: item['title'],
          subTitle: item['subTitle'],
        );
      },
    );
  }
}
