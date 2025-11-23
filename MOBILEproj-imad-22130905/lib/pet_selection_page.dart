import 'package:flutter/material.dart';
import 'owner_info_page.dart';

class PetSelectionPage extends StatefulWidget {
  @override
  _PetSelectionPageState createState() => _PetSelectionPageState();
}

class _PetSelectionPageState extends State<PetSelectionPage> {
  String selectedAnimal = 'Dog';
  String selectedBreed = 'Labrador';
  String selectedSex = 'Male';
  TextEditingController petNameController = TextEditingController();

  // Breeds for each animal type
  Map<String, List<String>> animalBreeds = {
    'Dog': ['Labrador', 'German Shepherd', 'Golden Retriever', 'Bulldog'],
    'Cat': ['Persian', 'Siamese', 'Maine Coon', 'British Shorthair'],
    'Bird': ['Parrot', 'Canary', 'Cockatiel', 'Budgie'],
    'Squirrel': ['Gray Squirrel', 'Red Squirrel', 'Flying Squirrel', 'Fox Squirrel'],
  };

  // Animal emojis
  Map<String, String> animalEmojis = {
    'Dog': '🐕',
    'Cat': '🐈',
    'Bird': '🐦',
    'Squirrel': '🐿️',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adopt a Pet'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Center(
              child: Text(
                'Choose Your New Friend',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(height: 30),

            // Select Animal Type
            Text(
              'Select Animal Type:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: animalBreeds.keys.map((animal) {
                return ChoiceChip(
                  label: Text('${animalEmojis[animal]} $animal'),
                  selected: selectedAnimal == animal,
                  onSelected: (selected) {
                    setState(() {
                      selectedAnimal = animal;
                      selectedBreed = animalBreeds[animal]![0];
                    });
                  },
                  selectedColor: Colors.purple[200],
                );
              }).toList(),
            ),
            SizedBox(height: 30),

            // Select Breed
            Text(
              'Select Breed:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: selectedBreed,
                isExpanded: true,
                underline: SizedBox(),
                items: animalBreeds[selectedAnimal]!.map((breed) {
                  return DropdownMenuItem(
                    value: breed,
                    child: Text(breed),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBreed = value!;
                  });
                },
              ),
            ),
            SizedBox(height: 30),

            // Select Sex
            Text(
              'Select Sex:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Male'),
                    value: 'Male',
                    groupValue: selectedSex,
                    onChanged: (value) {
                      setState(() {
                        selectedSex = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Female'),
                    value: 'Female',
                    groupValue: selectedSex,
                    onChanged: (value) {
                      setState(() {
                        selectedSex = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Pet Name Input
            Text(
              'Pet Name:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: petNameController,
              decoration: InputDecoration(
                hintText: 'Enter your pet name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.pets),
              ),
            ),
            SizedBox(height: 40),

            // Next Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (petNameController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please enter a pet name'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OwnerInfoPage(
                          animalType: selectedAnimal,
                          breed: selectedBreed,
                          sex: selectedSex,
                          petName: petNameController.text,
                          animalEmoji: animalEmojis[selectedAnimal]!,
                        ),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
