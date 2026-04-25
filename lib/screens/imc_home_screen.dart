import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/components/primary_button.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class IMCHomeScreen extends StatefulWidget {
  const IMCHomeScreen({super.key});

  @override
  State<IMCHomeScreen> createState() => _IMCHomeScreenState();
}

class _IMCHomeScreenState extends State<IMCHomeScreen> {
  int selectedAge = 25;
  int selectedWeight = 70;
  double selectedHeight = 170;
  PersonGender? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(
          selectedGender: gender,
          onSelected: (value) {
            setState(() {
              gender = value;
            });
          },
        ),
        HeightSelector(
          height: selectedHeight,
          onChanged: (value) {
            setState(() {
              selectedHeight = value;
            });
          },
        ),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            spacing: 16,
            children: [
              Expanded(
                child: NumberSelector(
                  title: "Peso",
                  value: selectedWeight,
                  onIncrement: () {
                    setState(() {
                      selectedWeight += 1;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      selectedWeight -= 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: NumberSelector(
                  title: "Edad",
                  value: selectedAge,
                  onIncrement: () {
                    setState(() {
                      selectedAge += 1;
                    });
                  },
                  onDecrement: () {
                    setState(() {
                      selectedAge -= 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        PrimaryButton(
          title: "Calcular",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ImcResultScreen(
                  height: selectedHeight,
                  weight: selectedWeight,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
