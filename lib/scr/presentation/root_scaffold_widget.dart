import 'package:flutter/material.dart';

class RootScaffoldWidget extends StatelessWidget {
  const RootScaffoldWidget({required this.child, super.key});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
    );
  }
}
