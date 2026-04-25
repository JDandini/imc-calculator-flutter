import 'package:flutter/material.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcCalculator {
  final int weight;
  final double height;

  const ImcCalculator({required this.weight, required this.height});

  double calculateIMC() {
    double heightInMetters = height / 100;
    double imc = weight / (heightInMetters * heightInMetters);
    return imc;
  }

  String displayText() {
    double imc = calculateIMC();
    switch (imc) {
      case < 18:
        return "Bajo de peso";
      case >= 18 && < 25:
        return "Peso normal";
      case >= 25 && < 30:
        return "Sobrepeso";
      default:
        return "Obesidad";
    }
  }

  String callToAction() {
    double imc = calculateIMC();
    switch (imc) {
      case < 18:
        return "Estas por debajo de lo óptimo para tu peso y altura";
      case >= 18 && < 25:
        return "Estas en lo óptimo para tu peso y altura";
      default:
        return "Estas por encima de lo óptimo para tu peso y altura";
    }
  }

  TextStyle displayTextStyle() {
    double imc = calculateIMC();
    switch (imc) {
      case < 18:
        return TextStyles.subheaderTextBlue;
      case >= 18 && < 25:
        return TextStyles.subheaderTextGreen;
      case >= 25 && < 30:
        return TextStyles.subheaderTextYellow;
      default:
        return TextStyles.subheaderTextRed;
    }
  }
}
