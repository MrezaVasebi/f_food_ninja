import 'package:flutter/material.dart';

class RootScaffoldWidget extends StatelessWidget {
  const RootScaffoldWidget(
      {required this.child, this.bottomNavigationBar, super.key});

  final Widget? child;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: child,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
