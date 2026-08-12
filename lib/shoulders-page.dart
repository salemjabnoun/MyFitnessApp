import 'package:flutter/material.dart';
import 'package:my_app/main.dart';


class ShouldersPage extends StatelessWidget {
  const ShouldersPage({super.key});

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
                'Shoulders Exercises :',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            const SizedBox(height:15),
            MyCard(imPath: 'assets/shoulders-press.png'),
            const SizedBox(height: 15),
              Text(
                'Shoulders Press',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/shoulders-lateral-raises.png'),
            const SizedBox(height: 15),
              Text(
                'Shoulders Lateral Raises',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/shoulders-front-raises.png'),
            const SizedBox(height: 15),
              Text(
                'Shoulders Front Raises',
                style: TextStyle(color: Colors.white),
              ),            
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/shoulders-upright-row.png'),
            const SizedBox(height: 15),
              Text(
                'Shoulders Upright Row',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/shoulders-rear-delt-flys.png'),
            const SizedBox(height: 15),
              Text(
                'Shoulders Rear Delt Flys',
                style: TextStyle(color: Colors.white),
              ),
            const SizedBox(height: 40),
            MyCard(imPath: 'assets/shrug.png'),
            const SizedBox(height: 15),
              Text(
                'Shrug',
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
