import 'package:flutter/material.dart';
import 'package:study_practice_app/ui/utils/utils.dart';
import 'package:study_practice_app/ui/widgets/profile_tile.dart';

class ProfileViewScreen extends StatefulWidget {
  const ProfileViewScreen({super.key});

  @override
  State<ProfileViewScreen> createState() => _ProfileViewScreenState();
}

class _ProfileViewScreenState extends State<ProfileViewScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 90,
                            backgroundColor: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(0.2),
                            child: ClipOval(
                              child: Icon(
                                Icons.person,
                                size: 80,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: CircleAvatar(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              child: IconButton(
                                icon: const Icon(Icons.edit, color: colorWhite),
                                onPressed: () {
                                  _onClickDialog(context);
                                  nameController.text = "Khaled Mohammed";
                                  emailController.text =
                                      'khaledmohammed@gmail.com';
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Khaled Mohammed",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.verified_outlined,
                                color: colorblueAccent,
                              )
                            ],
                          ),
                          Text(
                            'khaledmohammed@gmail.com',
                            style: TextStyle(
                              fontSize: 16,
                              color: colorGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: profileProgressStatus(
                            label: 'COMPLETED',
                            value: '3',
                            context: context,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: profileProgressStatus(
                            label: 'PASSED',
                            value: '9',
                            context: context,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: profileProgressStatus(
                            label: 'FAILED',
                            value: '4',
                            context: context,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Appearance',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const ProfileTile(
                      title: 'Theme',
                      subtitle: 'Change the theme of the app',
                      icon: Icons.color_lens,
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const ProfileTile(
                      title: 'Privacy',
                      subtitle: 'Manage your privacy settings',
                      icon: Icons.lock_outline,
                    ),
                    const ProfileTile(
                      title: 'Help & Support',
                      subtitle: 'Get help or contact support',
                      icon: Icons.help_outline,
                    ),
                    const ProfileTile(
                      title: 'About',
                      subtitle: 'App information and version',
                      icon: Icons.info_outline,
                    ),
                    const SizedBox(height: 30),
                  ],
                ))));
  }

  Future<void> _onClickDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: colorWhite,
            title: const Text('Edit Profile'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter Name',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter Email',
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: colorblueAccent,
                    foregroundColor: colorWhite),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Edit'),
              ),
            ],
          );
        });
  }
}
