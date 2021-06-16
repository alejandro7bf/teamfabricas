

import 'package:flutter/material.dart';

class FabricaTextField extends StatelessWidget {
  const FabricaTextField({
    Key? key,
    required TextEditingController controllername,
    required this.hint,
  }) : _controllername = controllername, super(key: key);

  final TextEditingController _controllername;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 400,
        child: TextFormField(
          
          controller: _controllername,
          enabled: true,
          decoration: InputDecoration(
            errorMaxLines: 20,
            hintText: hint,
          ),
          validator: (name) {
            if (name == null || name.isEmpty) {
              return "Campo Obligatorio";
            }
          },
        ),
      ),
    );
  }
}