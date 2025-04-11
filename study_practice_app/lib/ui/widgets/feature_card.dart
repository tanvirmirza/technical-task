import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';

class FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final double progress;
  final Color iconColor;
  final VoidCallback onTap;

  const FeatureCard({
    super.key,
    required this.title,
    required this.progress,
    required this.icon,
    required this.iconColor,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          elevation: 0.5,
          surfaceTintColor: colorWhite,
          shadowColor: colorGrey.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: colorGrey.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      icon,
                      color: iconColor,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w300,
                          color: colorGrey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "${(progress * 100).toStringAsFixed(0)}%",
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: colorGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 18.0,
                    activeTrackColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.2),
                    inactiveTrackColor: Colors.grey.shade100,
                    thumbColor: Theme.of(context).colorScheme.primary,
                  ),
                  child: Slider(
                    value: progress,
                    min: 0,
                    max: 1,
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
