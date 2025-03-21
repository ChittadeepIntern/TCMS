import 'package:fluent_ui/fluent_ui.dart';

class Alertdialog extends StatelessWidget {
  const Alertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      content: Text("Wrong Credentials"),
      
    );
  }
}
