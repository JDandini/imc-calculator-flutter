import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';

class ComponentDecorations {
  static BoxDecoration flatCompDecoration = BoxDecoration(
    color: AppColor.backgroundComponent,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration selectedCompDecoration = BoxDecoration(
    color: AppColor.backgroundComponentSelected,
    borderRadius: BorderRadius.circular(10),
  );

  static ButtonStyle primaryButtonStyle = ButtonStyle(
    shape: WidgetStatePropertyAll(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    foregroundColor: WidgetStatePropertyAll(Colors.white),
    backgroundColor: WidgetStatePropertyAll(AppColor.primary),
  );
}
