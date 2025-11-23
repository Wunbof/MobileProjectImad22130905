import 'package:flutter/material.dart';
import 'pet_selection_page.dart';

void main() {
  runApp(PetAdoptionApp());
}

class PetAdoptionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Adoption',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
      ),
      home: PetSelectionPage(),
    );
  }
}
