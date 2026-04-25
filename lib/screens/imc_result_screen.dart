import 'package:flutter/material.dart';
import 'package:imc_calculator/components/primary_button.dart';
import 'package:imc_calculator/components/result_content.dart';
import 'package:imc_calculator/core/app_color.dart';
import 'package:imc_calculator/core/component_decorations.dart';
import 'package:imc_calculator/core/imc_calculator.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;

  const ImcResultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navigationBarCreation(),
      backgroundColor: AppColor.background,
      body: createResultViewBody(context),
    );
  }

  Widget createResultViewBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Text("Tu resultado", style: TextStyles.bigText),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: double.infinity,
              decoration: ComponentDecorations.flatCompDecoration,
              child: resultCardBody(),
            ),
          ),
        ),
        PrimaryButton(
          title: "Finalizar",
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget resultCardBody() {
    ImcCalculator calculator = ImcCalculator(weight: weight, height: height);
    return ResultContent(
      imcDisplayText: calculator.displayText(),
      imcValue: calculator.calculateIMC(),
      imcCallToActionText: calculator.callToAction(),
      displayTextStyle: calculator.displayTextStyle(),
    );
  }

  AppBar navigationBarCreation() {
    return AppBar(
      backgroundColor: AppColor.primary,
      foregroundColor: Colors.white,
    );
  }
}
