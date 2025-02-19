import 'package:flutter/material.dart';
import 'package:cart_greek_task/colours.dart';

class Services extends StatelessWidget {
  const Services({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      decoration: BoxDecoration(
        color: AppColors.seventh,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const SizedBox(
            height: 80,
          ),
          Positioned(
            right: -70,
            top: -55,
            child: Image.asset(
              'assets/Group 3750.png',
              height: 210,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nanny And\nBabysitting Services',
                    style: TextStyle(
                      fontFamily: 'AlegreyaSans',
                      color: Colors.indigo[900],
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 80),
            ],
          ),
        ],
      ),
    );
  }
}
