import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ProfileTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      surfaceTintColor: colorWhite,
      shadowColor: colorGrey.withOpacity(0.3),
      margin: const EdgeInsets.only(bottom: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorGrey.withOpacity(0.1),
          width: 1,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              Theme.of(context).colorScheme.primary.withOpacity(0.2),
          child: Icon(icon, color: Theme.of(context).colorScheme.primary),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.navigate_next),
      ),
    );
  }
}
