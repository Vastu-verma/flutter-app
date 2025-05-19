

import 'package:flutter/material.dart';
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
            const Text("Step 2 / 2", style: TextStyle(color: Color.fromRGBO(113, 49, 0, 1))),
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
                  backgroundColor: Color.fromRGBO(113, 49, 0, 1),
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

