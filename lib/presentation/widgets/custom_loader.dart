import 'package:flutter/material.dart';

/// Custom Loader Widget
class CustomLoader extends StatelessWidget {
  /// Constructor
  const CustomLoader({super.key});

  /// Build Method
  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
