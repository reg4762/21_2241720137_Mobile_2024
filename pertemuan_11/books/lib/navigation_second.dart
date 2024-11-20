import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen Regita'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Yellow'),
              onPressed: () {
                color = Colors.yellow.shade700;
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                color = const Color.fromARGB(255, 219, 108, 164);
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                color = const Color.fromARGB(255, 167, 6, 199);
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
