import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Adding item"),
      ),
      body: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.green,
          filled: true,
          labelText: "Nomi",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          )
        ),
      ),
    );
  }
}
