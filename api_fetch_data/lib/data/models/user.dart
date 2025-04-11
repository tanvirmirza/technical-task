import 'package:hive/hive.dart';
part 'user.g.dart';

@HiveType(typeId: 0)
class User {

  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String username;

  @HiveField(3) 
  final String email;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Unknown',
      username: json['username'] ?? 'Unknown',
      email: json['email'] ?? 'Unknown',
    );
  }
}
