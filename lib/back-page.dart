import 'package:flutter/material.dart';
import 'package:my_app/main.dart';

class BackPage extends StatelessWidget {
  const BackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Back !'),
        backgroundColor: const Color(0xFFE63946),
        foregroundColor: Colors.white,
        leading: Icon(Icons.fitness_center_rounded),
      ),
      body: SingleChildScrollView(
        child: Center(child: Column(
          children: [
            const SizedBox(height: 20),
            Tabs(),
            const SizedBox(height: 18),
            Text(
                'Back Exercises :',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            const SizedBox(height:15),
            MyCard(imPath: 'assets/back-lat-pulldown.png'),
            const SizedBox(height: 15),
              Text(
                'Lat Pulldown',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/back-lever-seated-row.png'),
            const SizedBox(height: 15),
              Text(
                'Lever Seated Row',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/back-seated-cable-row.png'),
            const SizedBox(height: 15),
              Text(
                'Seated cable Row',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/back-incline-row.png'),
            const SizedBox(height: 15),
              Text(
                'Incline Row',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/back-hyperextension.png'),
            const SizedBox(height: 15),
              Text(
                'Hyperextension',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
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
