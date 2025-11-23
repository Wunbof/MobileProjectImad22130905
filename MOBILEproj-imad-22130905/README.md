# Pet Adoption App 🐾

A simple Flutter pet adoption application where users can adopt pets by selecting animal type, breed, sex, and name, then providing their owner information.

## Features

- **Select Animal Type**: Choose from Dog 🐕, Cat 🐈, Bird 🐦, or Squirrel 🐿️
- **Select Breed**: Each animal has 4 different breeds to choose from
- **Choose Sex**: Select Male or Female
- **Name Your Pet**: Enter a custom name for your new friend
- **Owner Information**: Fill in your personal details (name, age, email, phone, address)
- **Thank You Page**: Beautiful confirmation page with your adopted pet's information

## Animal Types and Breeds

### Dog 🐕
- Labrador
- German Shepherd
- Golden Retriever
- Bulldog

### Cat 🐈
- Persian
- Siamese
- Maine Coon
- British Shorthair

### Bird 🐦
- Parrot
- Canary
- Cockatiel
- Budgie

### Squirrel 🐿️
- Gray Squirrel
- Red Squirrel
- Flying Squirrel
- Fox Squirrel

## Pages

1. **Pet Selection Page** - Choose your pet's type, breed, sex, and name
2. **Owner Information Page** - Enter your personal details
3. **Thank You Page** - Confirmation with pet details and emoji

## How to Run

### Prerequisites
- Flutter SDK installed on your computer
- Android Studio or VS Code with Flutter extensions
- An emulator or physical device

### Installation Steps

1. **Extract the project files** to a folder

2. **Open terminal/command prompt** in the project folder

3. **Get Flutter dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

   Or if you have multiple devices:
   ```bash
   flutter devices
   flutter run -d <device_id>
   ```

### For Android:
- Make sure you have an Android emulator running, or connect your Android phone with USB debugging enabled

### For iOS (Mac only):
- Make sure you have Xcode installed
- Run on iOS simulator or connected iPhone

## Project Structure

```
pet_adoption_app/
├── lib/
│   ├── main.dart                 # App entry point
│   ├── pet_selection_page.dart   # First page - select pet
│   ├── owner_info_page.dart      # Second page - owner info
│   └── thank_you_page.dart       # Third page - confirmation
├── pubspec.yaml                  # Dependencies
└── README.md                     # This file
```

## File Details

### main.dart
- Entry point of the application
- Sets up the MaterialApp with theme and routing

### pet_selection_page.dart
- First page of the app
- Allows users to:
  - Select animal type (Dog, Cat, Bird, Squirrel)
  - Choose breed from dropdown
  - Select sex (Male/Female) using radio buttons
  - Enter pet name in text field
- Validates that pet name is entered before proceeding

### owner_info_page.dart
- Second page of the app
- Collects owner information:
  - Name
  - Age
  - Email
  - Phone
  - Address
- Validates all fields are filled before submission

### thank_you_page.dart
- Final confirmation page
- Displays:
  - Thank you message
  - Pet emoji/image
  - Pet details (name, type)
  - Owner name
- Option to adopt another pet

## Technologies Used

- **Flutter**: UI framework
- **Dart**: Programming language
- **Material Design**: UI components

## Simple Code Explanation

The app uses simple Flutter concepts:
- **StatefulWidget**: For pages that need to update (remember user input)
- **TextEditingController**: To get text from input fields
- **DropdownButton**: For selecting breeds
- **RadioButton**: For selecting sex
- **Navigator**: To move between pages
- **SnackBar**: For showing error messages

No complex patterns or advanced features - just basic Flutter!

## Troubleshooting

### If you get errors:

1. **Make sure Flutter is installed**:
   ```bash
   flutter doctor
   ```

2. **Clean and get dependencies**:
   ```bash
   flutter clean
   flutter pub get
   ```

3. **Check your emulator/device is connected**:
   ```bash
   flutter devices
   ```

## Screenshots

The app has a clean, simple design with:
- Purple theme color
- Easy-to-use form inputs
- Clear navigation buttons
- Beautiful thank you page with gradient background

## License

Free to use for learning purposes!

---

**Enjoy adopting your new virtual pet! 🐾💜**
