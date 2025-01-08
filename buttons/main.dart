import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final IconData buttonIcon = Icons.baby_changing_station;

  void printStmnt(String label) {
    print("You Pressed the $label Button!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          // backgroundColor: Colors.blue,
          title: const Text("Button Types"),
        ),
        body: Center(
            child: Row(
          // crossAxisAlig15nment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              onPressed: () => printStmnt("Floating Action"),
              tooltip: "Floating Action Button",
              child: Icon(buttonIcon),
            ),
            Tooltip(
              message: "Outlined Button",
              child: OutlinedButton(
                onPressed: () => printStmnt("Outlined"),
                child: Icon(buttonIcon),
              ),
            ),
            Tooltip(
              message: "Text Button",
              child: TextButton(
                onPressed: () => printStmnt("Text"),
                child: Icon(buttonIcon),
              ),
            ),
            IconButton(
              onPressed: () => printStmnt("Icon"),
              tooltip: "Icon Button",
              icon: Icon(buttonIcon),
            ),
            Tooltip(
              message: "Elevated Button",
              child: ElevatedButton(
                onPressed: () => printStmnt("Elevated"),
                child: Icon(buttonIcon),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
