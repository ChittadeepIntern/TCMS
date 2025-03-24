import 'package:fluent_ui/fluent_ui.dart';

class Alertdialog extends StatelessWidget {
  final String message;
  
  const Alertdialog(this.message,{super.key});

  @override
  Widget build(BuildContext context) {
    return ContentDialog(
      content: Text(message),
      
    );
  }
}
