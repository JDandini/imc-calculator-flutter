import 'package:flutter/material.dart';
import 'package:imc_calculator/core/component_decorations.dart';
import 'package:imc_calculator/core/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Function onPressed;
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16, left: 16, right: 16),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          style: ComponentDecorations.primaryButtonStyle,
          onPressed: () {
            onPressed();
          },
          child: Text(title.toUpperCase(), style: TextStyles.bodyText),
        ),
      ),
    );
  }
}
