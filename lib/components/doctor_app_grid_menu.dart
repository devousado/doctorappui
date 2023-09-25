import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../models/doctor_menu.dart';

class DoctorAppGridMenu extends StatelessWidget {
  const DoctorAppGridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
      ),
      itemCount: doctorMenu.length,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            constraints: const BoxConstraints(
                // maxHeight: 81,
                ),
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(
                      minWidth: 56, minHeight: 56, maxHeight: 69, maxWidth: 69),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SvgPicture.asset(
                    'assets/svgImage/${doctorMenu[index].image}',
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
