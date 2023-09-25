import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/doctor_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopDoctorList extends StatelessWidget {
  const TopDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctorList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              'DoctorDetail',
              arguments: Doctors(
                doctorName: doctorList[index].doctorName,
                doctorDescription: doctorList[index].doctorDescription,
                doctorHospital: doctorList[index].doctorHospital,
                doctorNumberOfPatient: doctorList[index].doctorNumberOfPatient,
                doctorRating: doctorList[index].doctorRating,
                doctorSpeciality: doctorList[index].doctorSpeciality,
                doctorYearOfExperience:
                    doctorList[index].doctorYearOfExperience,
                doctorPicture: doctorList[index].doctorPicture,
                isOpenDoctor: doctorList[index].isOpenDoctor,
              ),
            );
          },
          child: TopCardDoctor(
            doctors: doctorList[index],
          ),
        );
      },
    );
  }
}

class TopCardDoctor extends StatelessWidget {
  const TopCardDoctor({super.key, required this.doctors});
  final Doctors? doctors;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          children: [
            Container(
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                doctors!.doctorPicture,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctors!.doctorName,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text(
                  ' ${doctors!.doctorSpeciality}  ·  ${doctors!.doctorHospital}  ',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 136,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            onRatingUpdate: (value) {
                              debugPrint(value.toString());
                            },
                            unratedColor: yelowwCOlor,
                            itemSize: 16,
                            initialRating: 5,
                            itemCount: 5,
                            itemPadding: EdgeInsets.zero,
                            direction: Axis.horizontal,
                            minRating: 1,
                            maxRating: 5,
                            itemBuilder: (context, index) {
                              return const Icon(
                                Icons.star,
                                color: gREYColors600,
                              );
                            },
                          ),
                          Text(
                            '(${doctors!.doctorNumberOfPatient})',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      Container(
                        height: 24,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: doctors!.isOpenDoctor
                              ? greenLightColor
                              : redLightColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          doctors!.isOpenDoctor ? 'Open' : 'Close',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: doctors!.isOpenDoctor
                                      ? greenColor
                                      : redColor),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
