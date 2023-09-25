import 'package:doctorapp/constants.dart';
import 'package:doctorapp/models/doctor_list.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({super.key});
  Widget _doctorExtraInformation(
      BuildContext context, String args, String type) {
    return Column(
      children: [
        Text(
          type,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: blackColors900,
                fontWeight: FontWeight.w400,
              ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              args,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: kBlueColor,
                    fontWeight: FontWeight.w400,
                  ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'yr',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Doctors;
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                color: greyColors500,
                image: DecorationImage(
                  image: AssetImage(
                    args.doctorPicture,
                  ),
                  fit: BoxFit.cover,
                )),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          'assets/svgImage/Icons.svg',
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(
                          'assets/svgImage/Book-maker.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  args.doctorName,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  ' ${args.doctorSpeciality}  · ${args.doctorHospital} ',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  args.doctorDescription,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: greyColors700,
                      fontFamily: GoogleFonts.sourceSansPro().fontFamily,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _doctorExtraInformation(
                        context,
                        args.doctorYearOfExperience,
                        'Experience',
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: greyColors400,
                      ),
                      _doctorExtraInformation(
                          context, args.doctorNumberOfPatient, 'Patiente'),
                      const VerticalDivider(
                        thickness: 1,
                        color: greyColors400,
                      ),
                      _doctorExtraInformation(
                          context, args.doctorRating, 'Rating'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: SvgPicture.asset(
                        'assets/svgImage/Btn_Message.svg',
                        height: 36,
                        width: 36,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width - 104,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: greenColor,
                      ),
                      child: SvgPicture.asset(
                        'assets/svgImage/Btn_Appointment.svg',
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
