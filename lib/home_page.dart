import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'package:cart_greek_task/widgets/customdrawer.dart';
import 'package:cart_greek_task/widgets/bottomnavigation.dart';
import 'package:cart_greek_task/widgets/listofpackages.dart';
import 'package:cart_greek_task/widgets/onedaypackages.dart';
import 'package:cart_greek_task/widgets/services.dart';
import 'package:cart_greek_task/widgets/welcomeheader.dart';
import 'package:cart_greek_task/textstyles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  void dispose() {
    _advancedDrawerController.dispose();
    super.dispose();
  }

  void _handleMenuButtonPressed() {
    _advancedDrawerController.showDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white, Colors.white.withOpacity(0.95)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationDuration: const Duration(milliseconds: 300),
      animationCurve: Curves.easeInOut,
      drawer: const CustomDrawer(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: IconButton(
                icon: SvgPicture.asset(
                  "assets/Group 729.svg",
                  width: 21.39,
                  height: 12,
                ),
                onPressed: _handleMenuButtonPressed,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const WelcomeHeader(),
                        const SizedBox(height: 34),
                        const Services(),
                        const SizedBox(height: 24),
                        Text(
                          'Your Current Booking',
                          style: s20W600Pri,
                        ),
                        const SizedBox(height: 16),
                        const OneDayPackages(),
                        const SizedBox(height: 24),
                        Text(
                          'Packages',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[900],
                          ),
                        ),
                        const SizedBox(height: 24),
                        const ListOfPackages()
                      ],
                    ),
                  ),
                ),
              ),
              const BottomNavigation()
            ],
          ),
        ),
      ),
    );
  }
}
