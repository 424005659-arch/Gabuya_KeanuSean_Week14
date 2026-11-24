import 'package:material_ui/material_ui.dart';
import '../theme/app_theme.dart';
import '../widgets/app_background.dart';
import '../widgets/labeled_field.dart';

/// Screen 1: Login (static, no navigation or validation).
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppBackground(
      child: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        const SizedBox(height: 48),

                        // STACK: logo circle with a small accent badge on top.
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 90,
                                height: 90,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: AppColors.logoFill,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.primary,
                                    width: 2,
                                  ),
                                ),
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: const BoxDecoration(
                                    color: AppColors.primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.star_rounded,
                                    size: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text('Welcome to Pinoy Sweets',
                            style: textTheme.titleLarge),
                        const SizedBox(height: 4),
                        const Text(
                          'Crave. Click. Kain.',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.textDark,
                          ),
                        ),

                        const Spacer(flex: 2),

                        const LabeledField(
                          label: 'Email Address',
                          hint: 'Enter your email',
                        ),
                        const SizedBox(height: 16),
                        const LabeledField(
                          label: 'Password',
                          hint: 'Enter your password',
                          isPassword: true,
                        ),

                        const Spacer(flex: 2),

                        // Visual-only buttons (empty callbacks, no logic).
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login'),
                        ),
                        const SizedBox(height: 12),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text('Sign Up'),
                        ),
                        const SizedBox(height: 16),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Forgot Password'),
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}