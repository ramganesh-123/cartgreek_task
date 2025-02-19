import 'package:cart_greek_task/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListOfPackages extends StatelessWidget {
  const ListOfPackages({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<Map<String, dynamic>> packages = [
    //   {'name': 'Silver Package', 'price': 100, 'duration': '3 Days'},
    //   {'name': 'Gold Package', 'price': 200, 'duration': '5 Days'},
    //   {'name': 'Platinum Package', 'price': 300, 'duration': '7 Days'},
    // ];
    // final List<Map<String, dynamic>> packages = [
    //   {
    //     'name': 'One Day Package',
    //     'price': '2799',
    //     'color': AppColors.nine,
    //     'duration': '1 Day',
    //     'description':
    //         'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam'
    //   },
    //   {
    //     'name': 'Three Day Package',
    //     'price': '7999',
    //     'color': AppColors.eight,
    //     'duration': '3 Days', // Added missing duration
    //     'description':
    //         'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam'
    //   },
    //   {
    //     'name': 'Five Day Package',
    //     'price': '12999',
    //     'color': AppColors.nine,
    //     'duration': '5 Days', // Added missing duration
    //     'description':
    //         'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam'
    //   },
    //   {
    //     'name': 'Weekend Package',
    //     'price': '5999',
    //     'color': AppColors.eight,
    //     'duration': '2 Days',
    //     'description':
    //         'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam'
    //   },
    // ];
    final List<Map<String, dynamic>> packages = [
      {
        'id': 1,
        'name': 'Silver Package',
        'price': 100,
        'duration': '3 Days',
        'description': 'A budget-friendly package for a short trip.'
      },
      {
        'id': 2,
        'name': 'Gold Package',
        'price': 200,
        'duration': '5 Days',
        'description': 'A balanced package for a medium-length trip.'
      },
      {
        'id': 3,
        'name': 'Platinum Package',
        'price': 300,
        'duration': '7 Days',
        'description': 'A premium package for an extended vacation.'
      }
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: packages.length,
      itemBuilder: (context, index) {
        final package = packages[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Container(
            decoration: BoxDecoration(
              color: index % 2 == 0 ? AppColors.nine : AppColors.eight,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: SvgPicture.asset(
                              'assets/Group 3732.svg',
                              height: 25,
                              width: 25,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            package['duration'],
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: index % 2 == 0
                              ? AppColors.ternary
                              : AppColors.ten,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        package['name'],
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '₹${package['price']}',
                        style: TextStyle(
                          color: Colors.indigo[900],
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '${package['description'] ?? " "}',
                    style: const TextStyle(
                      color: Color(0xFF494949),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
