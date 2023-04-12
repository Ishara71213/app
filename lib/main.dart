import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vision Mate'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 9, 99, 247),
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'Welcome to vision mate',
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 154, 159, 168),
            fontSize: 20,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 9, 99, 247),
        onPressed: () {},
        child: const Text(
          '+',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
        shape: const CircularNotchedRectangle(),
        // color: const Color.fromARGB(255, 9, 99, 247),
        child: Container(
          height: 70.0,
        ),
      ),
    );
  }
}
