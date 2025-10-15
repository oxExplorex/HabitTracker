import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dateNow = DateTime.now();
    final formattedDate = "${dateNow.day}.${dateNow.month}.${dateNow.year}";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Мои привычки"),
            Text(
              formattedDate,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Здесь будут твои привычки',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}