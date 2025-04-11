import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/widgets/subscription_plan_card.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 40),
            const Text(
              "Premium Plans",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Choose a plan that fits your needs and unlock exclusive features.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            SubscriptionPlanCard(
              title: "Monthly Plan",
              price: "\$4.99 / month",
              buttonText: "Subscribe Now",
              buttonColor: colorblueAccent.withOpacity(0.3),
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            SubscriptionPlanCard(
              title: "Yearly Plan",
              price: "\$49.99 / year",
              buttonText: "Subscribe & Save",
              buttonColor: colorGrey,
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            SubscriptionPlanCard(
              title: "3-Year Plan",
              price: "\$80.99 / 3 year",
              buttonText: "Subscribe",
              buttonColor: colorGrey,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
