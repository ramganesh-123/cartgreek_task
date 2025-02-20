import 'package:cart_greek_task/colours.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 36, top: 20),
        child: ListTileTheme(
          textColor: Colors.indigo[900],
          iconColor: Colors.indigo[900],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  left: 60,
                  bottom: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/image 1.png'),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Emily Cyrus',
                      style: TextStyle(
                        fontFamily: 'AlegreyaSans',
                        color: Colors.pink[300],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('Home'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('Book A Nanny'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('How It Works'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('Why Nanny Vanny'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('My Bookings'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('My Profile'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
              Divider(
                color: AppColors.ternary,
                indent: MediaQuery.of(context).size.width * 0.03,
                endIndent: MediaQuery.of(context).size.width * 0.10,
                thickness: 0.2,
              ),
              ListTile(
                title: const Text('Support'),
                titleTextStyle: TextStyle(
                  fontFamily: 'AlegreyaSans',
                  color: Colors.indigo[900],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
