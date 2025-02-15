import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:cart_greek_task/textstyles.dart';
import 'package:cart_greek_task/colours.dart';

class OneDayPackages extends StatelessWidget {
  const OneDayPackages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'One Day Package',
                  style: s18W500SecVar,
                ),
                SizedBox(
                  height: 19,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.ternary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const FittedBox(
                      child: Text(
                        'Start',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('From', style: TextStyle(color: Colors.grey)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          SvgPicture.asset('assets/calendar.svg',
                              height: 14, width: 14),
                          const SizedBox(width: 4),
                          Text(
                            '12.08.2020',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          SvgPicture.asset('assets/clock.svg',
                              height: 14, width: 14),
                          const SizedBox(width: 4),
                          Text(
                            '11 pm',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('To', style: TextStyle(color: Colors.grey)),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          SvgPicture.asset('assets/calendar.svg',
                              height: 14, width: 14),
                          const SizedBox(width: 4),
                          Text(
                            '13.08.2020',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          SvgPicture.asset('assets/clock.svg',
                              height: 14, width: 14),
                          const SizedBox(width: 4),
                          Text(
                            '07 am',
                            style: TextStyle(
                              fontFamily: 'AlegreyaSans',
                              color: Colors.grey[700],
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const ChipButtonsRow(),
          ],
        ),
      ),
    );
  }
}

class ChipButtonsRow extends StatelessWidget {
  const ChipButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // Ensures equal spacing
        children: [
          _buildChip('Rate Us', 'assets/star.svg'),
          _buildChip('Geolocation', 'assets/pin.svg'),
          _buildChip('Surveillance', 'assets/radio.svg'),
        ],
      ),
    );
  }

  Widget _buildChip(String label, String iconPath) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
          decoration: const BoxDecoration(
              color: Color(0XFF262F71),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: [
                SvgPicture.asset(iconPath, height: 8, width: 8),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  label,
                  style: const TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          )),
    );
  }
}
