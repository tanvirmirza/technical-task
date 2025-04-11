import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/widgets/custom_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Notification',
      ),
      body: ListView(
        children: [
          notificationTile(
              leading: Icons.check_circle,
              title: 'Added Success!',
              subtitle: "You have successfully added the quiz.",
              time: "42 minutes ago",
              context: context),
          notificationTile(
              leading: Icons.notifications,
              title: 'Your Payment Done',
              time: "15 minutes ago",
              context: context)
        ],
      ),
    );
  }

  Widget notificationTile({
    required IconData leading,
    required String title,
    String? subtitle,
    required String time,
    required BuildContext context,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.3),
        child: Icon(
          leading,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: subtitle != null
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subtitle),
                Text(time, style: const TextStyle(fontSize: 12)),
              ],
            )
          : Text(time, style: const TextStyle(fontSize: 12)),
      trailing: const CircleAvatar(
        backgroundColor: Colors.blue,
        radius: 4,
      ),
    );
  }
}
