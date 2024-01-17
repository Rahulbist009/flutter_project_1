import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, User",
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                MyCard(
                  label: 'Students',
                  icon: Icons.people,
                ),
                MyCard(
                  label: "Teachers",
                  icon: Icons.edit_document,
                ),
                MyCard(
                  label: "Course",
                  icon: Icons.book,
                )
              ],
            ),
            Row(
              children: [
                MyCard(
                  label: "Attendance",
                  icon: Icons.check,
                ),
                MyCard(
                  label: "Exams",
                  icon: Icons.checklist,
                ),
                MyCard(
                  icon: Icons.graphic_eq_rounded,
                  label: "Reports",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String label;
  final IconData icon;
  const MyCard({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                label,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
