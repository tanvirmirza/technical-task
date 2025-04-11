import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/widgets/custom_appbar.dart';
import 'package:study_practice_app/ui/widgets/practice_tile.dart';

class PracticeScreen extends StatelessWidget {
  const PracticeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Practice",
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Text(
              'Please select one or more topics to practice below',
              style: TextStyle(fontSize: 16),
            ),
          ),
          PracticeTile(
              title: 'Alertness',
              icon: Icons.sensors,
              status: '26 of 26 attempted, 88% accuracy',
              color: Colors.blue),
          PracticeTile(
              title: 'Attitude',
              icon: Icons.emoji_emotions,
              status: '26 of 25 attempted, 88% accuracy',
              color: Colors.green),
          PracticeTile(
              title: 'Safety & your vehicle',
              icon: Icons.directions_car,
              status: '26 of 26 attempted, 88% accuracy',
              color: Colors.orange),
          PracticeTile(
              title: 'Safety Margins',
              icon: Icons.traffic,
              status: '34 of 34 attempted, 95% accuracy',
              color: Colors.red),
          PracticeTile(
              title: 'Hazard Awareness',
              icon: Icons.warning,
              status: '30 of 28 attempted, 100% accuracy',
              color: Colors.purple),
          PracticeTile(
              title: 'Vulnerable road users',
              icon: Icons.pedal_bike,
              status: '26 of 26 attempted, 100% accuracy',
              color: Colors.teal),
          PracticeTile(
              title: 'Other types of vehicle',
              icon: Icons.fire_truck,
              status: '26 of 26 attempted, 100% accuracy',
              color: Colors.brown),
        ],
      ),
    );
  }
}
