import 'package:flutter/material.dart';
import 'shoulders-page.dart';
import 'back-page.dart';
import 'chest-page.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // this title is useless
      title: 'My Hello World App',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color(0xFFE63946)),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Tabs extends StatelessWidget {
  const Tabs({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const ChestPage()),
              );
            },
            child: Image.asset('assets/chest-icon.png', height: 55, width: 55),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const ShouldersPage()),
              );
            },
            child: Image.asset(
              'assets/shoulders-icon.png',
              height: 55,
              width: 55,
            ),
          ),
          const SizedBox(width: 5),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (context) => const BackPage()),
              );
            },
            child: Image.asset('assets/back-icon.png', height: 55, width: 55),
          ),
          const SizedBox(width: 5),
          Image.asset('assets/biceps-icon.png', height: 55, width: 55),
          const SizedBox(width: 5),
          Image.asset('assets/triceps-icon.png', height: 55, width: 55),
          const SizedBox(width: 5),
          Image.asset('assets/legs-icon.png', height: 55, width: 55),
          const SizedBox(width: 5),
          Image.asset('assets/calves-icon.png', height: 55, width: 55),
          const SizedBox(width: 5),
          Image.asset('assets/abs-icon.png', height: 55, width: 55),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String imPath;

  const MyCard({super.key, required this.imPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 90, 78, 79),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(imPath, height: 190, width: 320, fit: BoxFit.cover),
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: const Color(0xFFE63946),
        foregroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: Icon(Icons.fitness_center_rounded, size: 20),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // Press "p" in the console), to see the wireframe for each widget.
            mainAxisAlignment: .center,
            children: [
              // Image.network(
              //   'https://personallevelfitness.com/wp-content/uploads/2018/08/Chest-Press-DB.jpg',
              //   height: 200,
              //   width: 300,
              // ),
              const SizedBox(height: 20),
              Tabs(),
              const SizedBox(height: 40),
              Text(
                'Welcome to my Gym Exercises Gallery !',
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 150),
              Text(
                '"Strive for Progress, not Perfection."',
                style: TextStyle(fontSize: 30, color: Colors.redAccent),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
