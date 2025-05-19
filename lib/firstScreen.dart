
import 'package:flutter/material.dart';
import 'package:app_first/secondScreen.dart';

class StepOneScreen extends StatefulWidget {
  const StepOneScreen({super.key});

  @override
  State<StepOneScreen> createState() => _StepOneScreenState();
}

class _StepOneScreenState extends State<StepOneScreen> {
  String? selectedOption;

  final List<Map<String, String>> shopOptions = [
    {
      'icon': 'assets/img.png',
      'label': 'Electrical Shops',
    },
    {
      'icon': 'assets/img_1.png',
      'label': 'Books Shop',
    },
    {
      'icon': 'assets/img_2.png',
      'label': 'Hardware Shops',
    },
  ];

  final List<Map<String, String>> foodOptions = [
    {
      'icon': 'assets/img_3.png',
      'label': 'Canteens',
    },
    {
      'icon': 'assets/img_4.png',
      'label': 'Juice Corner',
    },
    {
      'icon': 'assets/img_5.png',
      'label': 'Restaurants',
    },
  ];

  Widget buildOptionList(List<Map<String, String>> options) {
    return Column(
      children: options.map((option) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                selectedOption = option['label'];
              });
            },
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Adjust radius as needed
              ),
              side: const BorderSide(color: Colors.grey),
              backgroundColor:
              selectedOption == option['label'] ? Color.fromRGBO(255,232,215,1) : Colors.white,
            ),
            child: Row(
              children: [
                Image.asset(option['icon']!, width: 28, height: 28),
                const SizedBox(width: 12),
                Text(
                  option['label']!,
                  style: TextStyle(
                    color: selectedOption == option['label'] ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Write your reviews'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Step 1 / 2", style: TextStyle(color: Color.fromRGBO(113, 49, 0, 1))),
            const SizedBox(height: 8),
            const Text(
              'Select the space you\'re facing problem in your city.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text('Shops', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            buildOptionList(shopOptions),
            const SizedBox(height: 16),
            const Text('Food Area', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            buildOptionList(foodOptions),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedOption != null
                    ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StepTwoScreen()),
                  );
                }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(113, 49, 0, 1),
                  foregroundColor: Colors.white,
                ),
                child: const Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
