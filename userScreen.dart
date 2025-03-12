import 'package:flutter/material.dart';
import 'package:practicebuilderdesignpattern/user.dart';
import 'package:practicebuilderdesignpattern/userBuilder.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final List<User> users = [
    UserBuilder(firstName: "Heba", lastName: "Ashraf")
        .setAge(22)
        .setPhone("0123456789")
        .build(),
    UserBuilder(firstName: "Nada", lastName: "Ashraf")
        .setPhone("01111222333")
        .build(),
    UserBuilder(firstName: "Basma", lastName: "Ashraf").setAge(25).build(),
    UserBuilder(firstName: "Omar", lastName: "Mohamed")
        .setAge(30)
        .setPhone("01098765432")
        .build(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Screen',
            style: TextStyle(fontSize: 20, color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.person, color: Colors.blue),
                        const SizedBox(width: 10),
                        Text(
                            "${users[index].firstName} ${users[index].lastName}"),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.phone, color: Colors.blue),
                            const SizedBox(width: 10),
                            Text(users[index].phone.toString()),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Icon(Icons.calendar_today,
                                color: Colors.blue),
                            const SizedBox(width: 10),
                            Text(users[index].age.toString()),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
