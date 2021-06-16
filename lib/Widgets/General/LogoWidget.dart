import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior:  Clip.antiAliasWithSaveLayer,
    
      borderRadius: BorderRadius.circular(10),
      child: Image.asset('assets/blacklogo.png'),
    );
  }
}
