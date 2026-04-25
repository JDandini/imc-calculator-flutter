import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/component_decorations.dart';
import 'package:imc_calculator/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrement;

  const NumberSelector({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ComponentDecorations.flatCompDecoration,
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 8),
        child: Column(
          children: [
            Text(widget.title.toUpperCase(), style: TextStyles.bodyText),
            Text(widget.value.toString(), style: TextStyles.bigText),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    widget.onIncrement();
                  },
                  shape: CircleBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: AppColor.primary,
                  heroTag: null,
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    widget.onDecrement();
                  },
                  shape: CircleBorder(),
                  foregroundColor: Colors.white,
                  backgroundColor: AppColor.primary,
                  heroTag: null,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
