import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/widgets/custom_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Notification',
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            notificationTile(
                leading: Icons.check_circle,
                title: 'Added Success!',
                subtitle: "You have successfully added the quiz.",
                time: "42 minutes ago",
                context: context),
            SizedBox(
              height: 8,
            ),
            notificationTile(
                leading: Icons.notifications,
                title: 'Your Payment Done',
                time: "15 minutes ago",
                context: context)
          ],
        ),
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
              Theme.of(context).colorScheme.primary.withOpacity(0.3),
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
                  Text(
                    subtitle,
                  ),
                  Text(time, style: const TextStyle(fontSize: 12)),
                ],
              )
            : Text(time, style: const TextStyle(fontSize: 12)),
        trailing: const CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 4,
        ),
      ),
    );
  }
}
