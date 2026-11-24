import 'package:material_ui/material_ui.dart';
import '../widgets/app_background.dart';
import '../widgets/labeled_field.dart';

/// Screen 2: Sign Up (static, no navigation or validation).
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // STACK: back arrow layered above the page title block.
                        SizedBox(
                          height: 110,
                          child: Stack(
                            children: [
                              const Positioned(
                                top: 16,
                                left: 0,
                                child: Icon(Icons.arrow_back, size: 24),
                              ),
                              Positioned(
                                left: 0,
                                bottom: 0,
                                child: Text(
                                  'Sign Up',
                                  style: textTheme.headlineMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),

                        const LabeledField(
                          label: 'First Name',
                          hint: 'Enter your first name',
                        ),
                        const SizedBox(height: 14),
                        const LabeledField(
                          label: 'Last Name',
                          hint: 'Enter your last name',
                        ),
                        const SizedBox(height: 14),
                        const LabeledField(
                          label: 'Email Address',
                          hint: 'Enter your email',
                        ),
                        const SizedBox(height: 14),
                        const LabeledField(
                          label: 'Password',
                          hint: 'Create password',
                          isPassword: true,
                        ),
                        const SizedBox(height: 14),
                        const LabeledField(
                          label: 'Confirm Password',
                          hint: 'Repeat password',
                          isPassword: true,
                        ),

                        const Spacer(),
                        const SizedBox(height: 32),

                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Create Account'),
                        ),
                        const SizedBox(height: 32),
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