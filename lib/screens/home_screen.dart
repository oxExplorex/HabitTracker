import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    // получение даты
    var dateNow = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание слева
          mainAxisSize: MainAxisSize.min, // Минимальный размер
          children: [
            const Text("Мои привычки"),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: GestureDetector(
                onTap: () {
                  print("tapped subtitle");
                },
                child: Text(
                  "$dateNow",
                  style: TextStyle(
                    fontSize: 14, // Чуть меньше основного заголовка
                    fontWeight: FontWeight.w400, // Обычная толщина
                  ),
                ),
              )
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