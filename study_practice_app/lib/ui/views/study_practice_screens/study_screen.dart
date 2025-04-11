import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/widgets/custom_appbar.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Study',
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/article');
            },
            child: studyCard(
                title: 'Alertness',
                icon: Icons.sensors,
                progress: '0% Read',
                color: Colors.blue),
          ),
          studyCard(
              title: 'Attitude',
              icon: Icons.emoji_emotions,
              progress: '0% Read',
              color: Colors.yellow),
          studyCard(
              title: 'Safety & your vehicle',
              icon: Icons.directions_car,
              progress: '100% Read',
              color: Colors.green),
          studyCard(
              title: 'Safety Margins',
              icon: Icons.traffic,
              progress: '100% Read',
              color: Colors.red),
          studyCard(
              title: 'Hazard Awareness',
              icon: Icons.warning,
              progress: '100% Read',
              color: Colors.orange),
          studyCard(
              title: 'Vulnerable road users',
              icon: Icons.pedal_bike,
              progress: '100% Read',
              color: Colors.purple),
          studyCard(
              title: 'Other types of vehicle',
              icon: Icons.fire_truck,
              progress: '100% Read',
              color: Colors.brown),
          studyCard(
              title: 'Vehicle handling',
              icon: Icons.settings,
              progress: '100% Read',
              color: Colors.teal),
        ],
      ),
    );
  }
}
