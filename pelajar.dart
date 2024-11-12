import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 100, 100, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow()
                  ],
                  color: Color.fromARGB(255, 150, 150, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  border: Border.fromBorderSide(BorderSide(color: Color.fromARGB(255, 100, 100, 255), width: 2.0))
                ),
                width: 350.0,
                child: Column(
                  children: [
                    const Text(
                      "Title: Dart",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(color: Color.fromARGB(255, 100, 100, 255), width: 2.0)
                        )
                      ),
                      margin: EdgeInsets.only(top: 5.0),
                      padding: EdgeInsets.only(top: 5.0),
                      child: const Text(
                        "Description: Dart is programming language designed by Lars Bak & Kasper Lunk, developed by Google",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset("dart_logo.png", width: 120.0,)
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10.0),
                      constraints: const BoxConstraints(minWidth: double.infinity),
                      child: ElevatedButton(
                        child: const Text(
                          "visit to read more",
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 50, 200)
                          ),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ]
                )
              ),
            )
          ],
        ),
      )
    );
  }
}
