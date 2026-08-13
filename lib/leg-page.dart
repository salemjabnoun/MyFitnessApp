import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class LegPage extends StatelessWidget {
  const LegPage({super.key});

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
                'Leg Exercises :',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            const SizedBox(height:15),
            MyCard(imPath: 'assets/leg-press.png'),
            const SizedBox(height: 15),
              Text(
                'Leg Press',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/leg-extension.png'),
            const SizedBox(height: 15),
              Text(
                'Leg Extension',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'leg-barbell-squat.png'),
            const SizedBox(height: 15),
              Text(
                'Barbell Squat',
                style: TextStyle(color: Colors.white),
              ),            
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/leg-dumbbell-lunges.png'),
            const SizedBox(height: 15),
              Text(
                'Dumbbell Lunges',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/leg-sumo-squat.png'),
            const SizedBox(height: 15),
              Text(
                'Sumo Squat',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 40),
            MyCard(imPath: 'assets/lying-leg-curl.png'),
            const SizedBox(height: 15),
              Text(
                'Lying Leg Curl',
                style: TextStyle(color: Colors.white),),
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
