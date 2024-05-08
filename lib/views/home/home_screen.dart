import 'package:click/views/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:click/utils/assets_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: List.generate(
                100,
                (index) => Container(
                  height: 20,
                  width: double.infinity,
                  color: Colors.red,
                  margin: const EdgeInsets.all(10),
                ),
              ),
            ),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}
