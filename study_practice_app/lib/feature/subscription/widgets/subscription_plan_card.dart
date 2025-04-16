import 'package:flutter/material.dart';
import 'package:study_practice_app/core/utility/app_colors.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final String title;
  final String price;
  final String buttonText;
  final Color buttonColor;
  final VoidCallback onPressed;

  const SubscriptionPlanCard({
    super.key,
    required this.title,
    required this.price,
    required this.buttonText,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        elevation: 0.5,
        surfaceTintColor: AppColors.colorWhite,
        shadowColor: AppColors.colorGrey.withOpacity(0.3),
        margin: const EdgeInsets.only(bottom: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: AppColors.colorGrey.withOpacity(0.5),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                price,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Text(
                    buttonText,
                    style: const TextStyle(color: AppColors.colorWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
