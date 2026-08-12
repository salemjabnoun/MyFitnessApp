import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class ChestPage extends StatelessWidget {
  const ChestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE63946),
        foregroundColor: Colors.white,
        title: Text('Welcome Back !'),
        leading: Icon(Icons.fitness_center_rounded, size: 20),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const SizedBox(height: 20),
              Tabs(),
              const SizedBox(height: 18),
              Text(
                'Chest Exercises :',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              const SizedBox(height: 15),
              MyCard(imPath: 'assets/dumbbell-chest-press.jpg'),
              const SizedBox(height: 15),
              Text(
                'Dumbbell Chest Press',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 40),
              MyCard(imPath: 'assets/incline-bench-press.png'),
              const SizedBox(height: 15),
              Text(
                'Incline Bench Press',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 40),
              MyCard(imPath: 'assets/chest-fly.png'),
              const SizedBox(height: 15),
              Text('Chest Fly', style: TextStyle(color: Colors.white)),
              const SizedBox(height: 40),
              MyCard(imPath: 'assets/chest-press.png'),
              const SizedBox(height: 15),
              Text('Chest Press', style: TextStyle(color: Colors.white)),
              const SizedBox(height: 30),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE63946),
        foregroundColor: Colors.white,
        // onPressed: _incrementCounter,
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
        tooltip: 'Page',
        child: const Icon(Icons.home_rounded),
      ),
    );
  }
}
