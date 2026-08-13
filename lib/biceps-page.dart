import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class BicepsPage extends StatelessWidget {
    const BicepsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back !'),
        backgroundColor: const Color(0xFFE63946),
        foregroundColor: Colors.white,
        leading: Icon(Icons.fitness_center_rounded),
      ),
      body:
      SingleChildScrollView(
        child: Center(child: Column(
          children: [
            const SizedBox(height: 20),
            Tabs(),
            const SizedBox(height: 18),
            Text(
                'Biceps Exercises :',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            const SizedBox(height:15),
            MyCard(imPath: 'assets/biceps-hammer-curl.png'),
            const SizedBox(height: 15),
              Text(
                'Hammer Curl',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/alternate-biceps-curl.png'),
            const SizedBox(height: 15),
              Text(
                'Alternate Biceps Curl',
                style: TextStyle(color: Colors.white),
              ),
          ],
        ),),
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
