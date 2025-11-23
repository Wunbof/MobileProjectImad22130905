import 'package:flutter/material.dart';
import 'thank_you_page.dart';

class OwnerInfoPage extends StatefulWidget {
  final String animalType;
  final String breed;
  final String sex;
  final String petName;
  final String animalEmoji;

  OwnerInfoPage({
    required this.animalType,
    required this.breed,
    required this.sex,
    required this.petName,
    required this.animalEmoji,
  });

  @override
  _OwnerInfoPageState createState() => _OwnerInfoPageState();
}

class _OwnerInfoPageState extends State<OwnerInfoPage> {
  TextEditingController ownerNameController = TextEditingController();
  TextEditingController ownerAgeController = TextEditingController();
  TextEditingController ownerEmailController = TextEditingController();
  TextEditingController ownerPhoneController = TextEditingController();
  TextEditingController ownerAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Owner Information'),
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
                'Tell Us About Yourself',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                '${widget.petName} is waiting for you! ${widget.animalEmoji}',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ),
            SizedBox(height: 30),

            // Owner Name
            Text(
              'Your Name:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: ownerNameController,
              decoration: InputDecoration(
                hintText: 'Enter your full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),

            // Owner Age
            Text(
              'Your Age:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: ownerAgeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter your age',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.cake),
              ),
            ),
            SizedBox(height: 20),

            // Owner Email
            Text(
              'Your Email:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: ownerEmailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),

            // Owner Phone
            Text(
              'Your Phone:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: ownerPhoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.phone),
              ),
            ),
            SizedBox(height: 20),

            // Owner Address
            Text(
              'Your Address:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            TextField(
              controller: ownerAddressController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Enter your address',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                prefixIcon: Icon(Icons.home),
              ),
            ),
            SizedBox(height: 40),

            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (ownerNameController.text.isEmpty ||
                      ownerAgeController.text.isEmpty ||
                      ownerEmailController.text.isEmpty ||
                      ownerPhoneController.text.isEmpty ||
                      ownerAddressController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please fill all fields'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThankYouPage(
                          petName: widget.petName,
                          animalEmoji: widget.animalEmoji,
                          animalType: widget.animalType,
                          ownerName: ownerNameController.text,
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
                  'Complete Adoption',
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
