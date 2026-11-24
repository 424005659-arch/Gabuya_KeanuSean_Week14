import 'package:material_ui/material_ui.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'theme/app_theme.dart';

void main() => runApp(const PinoySweetsApp());

/// Which screen to preview. No navigation logic is needed for Week 14:
/// change this ONE line and hot restart to preview the other screen.
const Widget kPreviewScreen = SignUpScreen(); // or: SignUpScreen()

class PinoySweetsApp extends StatelessWidget {
  const PinoySweetsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinoy Sweets',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: kPreviewScreen,
    );
  }
}
