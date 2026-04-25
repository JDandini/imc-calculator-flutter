import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_tile.dart';

enum PersonGender { male, female }

class GenderSelector extends StatefulWidget {
  final PersonGender? selectedGender;
  final Function(PersonGender) onSelected;
  const GenderSelector({
    super.key,
    required this.selectedGender,
    required this.onSelected,
  });

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.onSelected(PersonGender.male);
            },
            child: GenderTile(
              isSelected: widget.selectedGender == .male,
              gender: .male,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.onSelected(PersonGender.female);
            },
            child: GenderTile(
              isSelected: widget.selectedGender == .female,
              gender: .female,
            ),
          ),
        ),
      ],
    );
  }
}
