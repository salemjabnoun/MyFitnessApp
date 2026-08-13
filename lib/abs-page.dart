import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class AbsPage extends StatelessWidget {
  const AbsPage({super.key});

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
                'Abs Exercises :',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            const SizedBox(height:15),
            MyCard(imPath: 'assets/abs-crunch-floor.png'),
            const SizedBox(height: 15),
              Text(
                'Crunch Floor',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/abs-front-plank.png'),
            const SizedBox(height: 15),
              Text(
                'Front Plank',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/abs-elbow-to-knee.png'),
            const SizedBox(height: 15),
              Text(
                'Elbow-to-knee',
                style: TextStyle(color: Colors.white),
              ),            
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/abs-leg-raise.png'),
            const SizedBox(height: 15),
              Text(
                'Lying Leg raise',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/abs-alternate-heel-touchers.png'),
            const SizedBox(height: 15),
              Text(
                'Alternate Heel Touchers',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 40),
            MyCard(imPath: 'assets/abs-russian-twist.png'),
            const SizedBox(height: 15),
              Text(
                'Russian Twist',
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
