import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Check Box"),
          ),
          body: Column(
            children: [
              CheckboxListTile(
                  title: Text("True"),
                  subtitle: Text("Answer"),
                  checkboxShape: CircleBorder(),
                  selectedTileColor: const Color.fromARGB(255, 214, 210, 210),
                  selected: isChecked,
                  value: isChecked,
                  onChanged: (value) {
                    isChecked = value ?? false;
                    setState(() {});
                  })
            ],
          ),
        ),
      ),
    );
  }
}
