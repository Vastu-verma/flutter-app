/*import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ReviewStepOne(),
    );
  }
}

class ReviewStepOne extends StatefulWidget {
  const ReviewStepOne({super.key});

  @override
  State<ReviewStepOne> createState() => _ReviewStepOneState();
}

class _ReviewStepOneState extends State<ReviewStepOne> {
  String selectedShop = '';

  final List<String> shopCategories = [
    'Electrical Shops',
    'Books Shop',
    'Hardware Shops',
  ];

  final List<String> foodCategories = [
    'Canteens',
    'Juice Corner',
    'Restaurants',
  ];

  Widget buildCategoryButton(String title) {
    final isSelected = selectedShop == title;
    return GestureDetector(
      onTap: () => setState(() => selectedShop = title),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
          color: isSelected ? const Color(0xFF7B3F00) : Colors.white,
        ),
        child: Row(
          children: [
            Icon(Icons.storefront,
                color: isSelected ? Colors.white : Colors.grey),
            const SizedBox(width: 12),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Write your reviews",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            Text("Step 1 / 2",
                style: TextStyle(
                    color: Colors.brown.shade700,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const Text("Select the space you're facing problem in your city.",
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            const Text("Shops", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ...shopCategories.map(buildCategoryButton),
            const SizedBox(height: 20),
            const Text("Food Area",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ...foodCategories.map(buildCategoryButton),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7B3F00),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReviewStepTwo()),
                  );
                },
                child: const Text("Next",
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewStepTwo extends StatelessWidget {
  const ReviewStepTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text("Write your reviews",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text("Step 2 / 2",
            style: TextStyle(
                color: Colors.brown.shade700,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 24),
        const Text("Give info about the issue you're facing",
            style: TextStyle(fontSize: 16)),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Short title',
            hintText: 'e.g. No one is giving Luxor pens',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          maxLines: 4,
          decoration: InputDecoration(
              labelText: 'Describe your issue',
              hintText:
              "Tell us exactly what's wrong so it can be fixed faster.",
              border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 20),
      Row(
        children: const [
          Icon(Icons.add_a_photo, color: Colors.brown),
          SizedBox(width: 8),
          Text("Add photos",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.brown))
        ],
      ),
      const Spacer(),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF7B3F00),
            padding: EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            // Submit logic here
          },
          child: const Text("Submit Complaint",
              style: TextStyle(fontSize: 16, color: Colors.white)),
        ),
      ),
      ],
    ),
    ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const StepOneScreen(),
    );
  }
}

class StepOneScreen extends StatelessWidget {
  const StepOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> shopOptions = [
      '🔌 Electrical Shops',
      '📚 Books Shop',
      '🔧 Hardware Shops',
    ];

    List<String> foodOptions = [
      '🍽️ Canteens',
      '🧃 Juice Corner',
      '🍴 Restaurants',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Write your reviews'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Step 1 / 2", style: TextStyle(color: Colors.brown)),
            const SizedBox(height: 8),
            const Text(
              'Select the space you\'re facing problem in your city.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text('Shops', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...shopOptions.map((option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  side: const BorderSide(color: Colors.grey),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(option),
                ),
              ),
            )),
            const SizedBox(height: 16),
            const Text('Food Area', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...foodOptions.map((option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  side: const BorderSide(color: Colors.grey),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(option),
                ),
              ),
            )),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StepTwoScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.brown),
                child: const Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StepTwoScreen extends StatelessWidget {
  const StepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Step 2 / 2", style: TextStyle(color: Colors.brown)),
            const SizedBox(height: 8),
            const Text(
              "Give info about the issue you're facing",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Short title',
                hintText: 'e.g. No one is giving Luxor pens',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Describe your issue',
                hintText: "Tell us exactly what's wrong so it can be fixed faster.",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo),
              label: const Text("Add photos"),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text("Submit Complaint"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Review App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const StepOneScreen(),
    );
  }
}

class StepOneScreen extends StatefulWidget {
  const StepOneScreen({super.key});

  @override
  State<StepOneScreen> createState() => _StepOneScreenState();
}

class _StepOneScreenState extends State<StepOneScreen> {
  String? selectedOption;

  final List<String> shopOptions = [
    '🔌 Electrical Shops',
    '📚 Books Shop',
    '🔧 Hardware Shops',
  ];

  final List<String> foodOptions = [
    '🍽️ Canteens',
    '🧃 Juice Corner',
    '🍴 Restaurants',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Write your reviews'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Step 1 / 2", style: TextStyle(color: Colors.brown)),
            const SizedBox(height: 8),
            const Text(
              'Select the space you\'re facing problem in your city.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text('Shops', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...shopOptions.map((option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    selectedOption = option;
                  });
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  side: const BorderSide(color: Colors.grey),
                  backgroundColor:
                  selectedOption == option ? Colors.brown : Colors.white,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    option,
                    style: TextStyle(
                      color: selectedOption == option ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            )),
            const SizedBox(height: 16),
            const Text('Food Area', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ...foodOptions.map((option) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    selectedOption = option;
                  });
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  side: const BorderSide(color: Colors.grey),
                  backgroundColor:
                  selectedOption == option ? Colors.brown : Colors.white,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    option,
                    style: TextStyle(
                      color: selectedOption == option ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            )),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StepTwoScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StepTwoScreen extends StatelessWidget {
  const StepTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Step 2 / 2", style: TextStyle(color: Colors.brown)),
            const SizedBox(height: 8),
            const Text(
              "Give info about the issue you're facing",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Short title',
                hintText: 'e.g. No one is giving Luxor pens',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Describe your issue',
                hintText: "Tell us exactly what's wrong so it can be fixed faster.",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo),
              label: const Text("Add photos"),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Submit Complaint"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

