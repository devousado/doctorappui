import 'package:doctorapp/components/top_doctor_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../components/doctor_app_grid_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenNavBar(),
                const SizedBox(
                  height: 30,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.displayLarge,
                    children: <TextSpan>[
                      const TextSpan(text: ' Find '),
                      TextSpan(
                        text: ' Your doctor  ',
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: greyCOlors900,
                                ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding: const EdgeInsets.only(
                    right: 8,
                    left: 16,
                    bottom: 5,
                    top: 6,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: greyColors500,
                  ),
                  child: TextField(
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: blackColors900,
                        ),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: blackColors900,
                      ),
                      suffixIconConstraints:
                          const BoxConstraints(maxHeight: 24),
                      hintText: 'Search doctor,medicines etc',
                      hintStyle: Theme.of(context).textTheme.headlineSmall,
                      contentPadding: const EdgeInsets.only(bottom: 5),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const DoctorAppGridMenu(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors ',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Text(
                      'View all ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kBlueColor,
                          ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const TopDoctorList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: SvgPicture.asset('assets/svgImage/Icons-Menu-Burger.svg'),
        ),
        CircleAvatar(
          maxRadius: 30,
          backgroundImage: Image.asset('assets/pngimage/profile.png').image,
        ),
      ],
    );
  }
}
