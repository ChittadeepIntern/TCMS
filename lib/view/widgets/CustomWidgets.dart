import 'package:fluent_ui/fluent_ui.dart';

class CustomWidgets {
  // FilledButton filledButton(
  //     String text, Color backgroundColor, Color textColor) {
  //   return FilledButton(
  //     style: ButtonStyle(
  //         foregroundColor: WidgetStatePropertyAll<Color>(textColor),
  //         backgroundColor: WidgetStatePropertyAll<Color>(backgroundColor),
  //         shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
  //             RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
  //     onPressed: () {},
  //     child: Text(text),
  //   );
  // }


  static ButtonStyle buttonStyle(Color backgroundColor, Color textColor) {
    return ButtonStyle(
        foregroundColor: WidgetStatePropertyAll<Color>(textColor),
        backgroundColor: WidgetStatePropertyAll<Color>(backgroundColor),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))));
  }
}
