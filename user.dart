import 'package:practicebuilderdesignpattern/userBuilder.dart';

class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User._({required this.firstName, required this.lastName, this.age, this.phone});

  factory User.build(UserBuilder builder) {
    return User._(
      firstName: builder.firstName,
      lastName: builder.lastName,
      age: builder.age,
      phone: builder.phone,
    );
  }

  @override
  String toString() {
    return '$firstName $lastName, Age: ${age ?? "Not provided"}, Phone: ${phone ?? "Not provided"}';
  }
}
