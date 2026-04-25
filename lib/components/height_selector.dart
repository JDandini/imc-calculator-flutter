import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/component_decorations.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double height;
  final Function(double) onChanged;
  const HeightSelector({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(
        decoration: ComponentDecorations.flatCompDecoration,
        child: Padding(
          padding: EdgeInsets.only(top: 16),
          child: Column(
            children: [
              Text("Altura".toUpperCase(), style: TextStyles.bodyText),
              Text(
                "${widget.height.toStringAsFixed(0)} cm",
                style: TextStyles.bigText,
              ),
              Slider(
                value: widget.height,
                min: 150,
                max: 220,
                divisions: 70,
                label: widget.height.toStringAsFixed(0),
                activeColor: AppColor.primary,
                onChanged: (value) {
                  widget.onChanged(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
