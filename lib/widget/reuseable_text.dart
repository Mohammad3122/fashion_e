import 'package:fashion_e/utils/constants.dart';
import 'package:flutter/material.dart';

class ReUseableTextForDetails extends StatelessWidget {
  const ReUseableTextForDetails({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(
        text: "€",
        style: textTheme.titleSmall?.copyWith(
          fontSize: 21,
          color: primaryColor,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: text,
            style: textTheme.titleSmall?.copyWith(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
