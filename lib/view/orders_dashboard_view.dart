import 'dart:developer';

import 'package:fluent_ui/fluent_ui.dart';

class OrdersDashboardView extends StatelessWidget {
  const OrdersDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header:
          const PageHeader(title: Center(child: Text('TCMS Orders Dashboard'))),
      content: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(300, 60, 300, 60),
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Welcome Back!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Please log in to continue',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 32),
                // Username Field
                TextBox(
                  decoration: WidgetStatePropertyAll<BoxDecoration>(
                      BoxDecoration(border: Border.all(color: Colors.grey))),
                  //header: 'Username',
                  placeholder: 'Enter your username',
                  onChanged: (value) {
                    // Handle username change
                  },
                ),
                const SizedBox(height: 16),
                // Password Field
                PasswordBox(
                  decoration: WidgetStatePropertyAll<BoxDecoration>(
                      BoxDecoration(border: Border.all(color: Colors.grey))),
                  //header: 'Password',
                  placeholder: 'Enter your password',
                  onChanged: (value) {
                    // Handle password change
                  },
                ),
                const SizedBox(height: 24),
                // Login Button
                FilledButton(
                  onPressed: () {
                    // Handle login action
                    log('Login button pressed');
                  },
                  child: const Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
