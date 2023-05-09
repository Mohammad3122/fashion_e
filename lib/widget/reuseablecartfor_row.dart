import 'package:fashion_e/widget/reuseable_text.dart';

import 'package:flutter/material.dart';

class ReUseAbleCartForRow extends StatelessWidget {
  const ReUseAbleCartForRow(
      {super.key, required this.price, required this.text});
  final double price;
  final String text;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: textTheme.headlineSmall
                ?.copyWith(color: Colors.grey, fontSize: 16),
          ),
          ReUseableTextForDetails(
            text: price.toString(),
          ),
        ],
      ),
    );
  }
}
