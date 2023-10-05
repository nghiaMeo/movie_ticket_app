import 'package:flutter/material.dart';

class PasswordToggleWidget extends StatelessWidget {
  final bool obscureText;
  final VoidCallback togglePasswordVisibility;

  PasswordToggleWidget({
    required this.obscureText,
    required this.togglePasswordVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: togglePasswordVisibility,
      child: Icon(
        obscureText ? Icons.visibility : Icons.visibility_off,
        color: obscureText ? Colors.grey : Colors.blue,
      ),
    );
  }
}
