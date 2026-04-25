import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/core/component_decorations.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderTile extends StatefulWidget {
  final bool isSelected;
  final PersonGender gender;
  const GenderTile({super.key, required this.isSelected, required this.gender});

  @override
  State<GenderTile> createState() => _GenderTileState();
}

class _GenderTileState extends State<GenderTile> {
  @override
  Widget build(BuildContext context) {
    String assetName = _assetName();
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 8),
      child: Container(
        decoration: widget.isSelected
            ? ComponentDecorations.selectedCompDecoration
            : ComponentDecorations.flatCompDecoration,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Image.asset(
                "assets/images/$assetName",
                height: 100,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(_displayText(), style: TextStyles.bodyText),
            ],
          ),
        ),
      ),
    );
  }

  String _displayText() {
    return widget.gender == .male
        ? "Hombre".toUpperCase()
        : "Mujer".toUpperCase();
  }

  String _assetName() {
    return widget.gender == .male ? "male.png" : "female.png";
  }
}
