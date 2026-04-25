import 'package:flutter/material.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ResultContent extends StatelessWidget {
  final String imcDisplayText;
  final double imcValue;
  final String imcCallToActionText;
  final TextStyle displayTextStyle;

  const ResultContent({
    super.key,
    required this.imcDisplayText,
    required this.imcValue,
    required this.imcCallToActionText,
    required this.displayTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 64, left: 16, right: 16),
          child: Text(imcDisplayText, style: displayTextStyle),
        ),
        Text(imcValue.toStringAsFixed(2), style: TextStyles.headerText),
        Padding(
          padding: const EdgeInsets.only(bottom: 64, left: 16, right: 16),
          child: Text(imcCallToActionText, style: TextStyles.subheaderText),
        ),
      ],
    );
  }
}
