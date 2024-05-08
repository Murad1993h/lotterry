import 'package:click/utils/assets_manager.dart';
import 'package:click/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavbarView extends StatelessWidget {
  const NavbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 65,
        width: MediaQuery.sizeOf(context).width * .95,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5000),
          border: Border.all(
            color: Colors.black.withOpacity(.1),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 2,
              spreadRadius: .5,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: const Center(
          child: Text('Implement Navbar Here'),
        ),
      ),
    );
  }
}
