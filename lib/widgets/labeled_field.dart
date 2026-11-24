import 'package:material_ui/material_ui.dart';

/// A label above a (non-functional) text field. Static UI only.
class LabeledField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;

  const LabeledField({
    super.key,
    required this.label,
    required this.hint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        TextField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            suffixIcon: isPassword
                ? const Icon(Icons.visibility_off_outlined, size: 20)
                : null,
          ),
        ),
      ],
    );
  }
}