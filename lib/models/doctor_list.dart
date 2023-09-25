class Doctors {
  String doctorName;
  String doctorSpeciality;
  String doctorRating;
  String doctorHospital;
  String doctorNumberOfPatient;
  String doctorYearOfExperience;
  String doctorDescription;
  String doctorPicture;
  bool isOpenDoctor;

  Doctors({
    required this.doctorName,
    required this.doctorDescription,
    required this.doctorHospital,
    required this.doctorNumberOfPatient,
    required this.doctorRating,
    required this.doctorSpeciality,
    required this.doctorYearOfExperience,
    required this.doctorPicture,
    required this.isOpenDoctor,
  });
}

List<Doctors> doctorList = [
  Doctors(
      doctorName: 'Dr.Samuelson',
      doctorSpeciality: 'Heart',
      doctorRating: '4.5',
      doctorHospital: 'Persahabatan Hospital',
      doctorNumberOfPatient: '1221',
      doctorYearOfExperience: '3',
      doctorDescription:
          '''Padma Bhushan Dr. Kler is currently working as Chairman at
           PSRI Heart Institute, New Delhi. He is also Heading Electrophysiology 
           Programme at PSRI Heart Institute,. Dr. Kler is a very active
            interventional cardiologist and has performed more than 10,000 coronary, 
            renal & peripheral angioplasties. He is an expert electrophysiologist,
             doing maximum number of Radio Frequency Ablations & is one of the highest implanter
              of ICD’s & Combo devices in the country. He has about 150 national & international journal articles to his name & has been on the editorial board of Indian Heart Journal. Dr. Kler is regularly invited as a guest faculty to various National & International conferences like HRS & ACC and has been a guest faculty in USA, France, Australia, Pakistan, Srilanka, Bangladesh & Singapore.
           Over the last 25 years Dr.''',
      doctorPicture: 'assets/pngimage/doctorsamuelson.png',
      isOpenDoctor: true),
  Doctors(
      doctorName: 'Dr. Gagan Sabharwal',
      doctorSpeciality: 'dental',
      doctorRating: '4.7',
      doctorHospital: 'Clinicians American Dental Association ',
      doctorNumberOfPatient: '3000',
      doctorYearOfExperience: '9',
      doctorDescription:
          'Dr. Gagan Sabharwal has a vast experience spanning across India and UAE. His areas of special interest include dental implants, cleft lip and palate surgery, orthognathic surgery and distraction osteogenesis. Apart from bring trained extensively in India, he has done his Arthroscopic and Open Temporomandibular Joint Surgery training from Vienna, Austria 2016, and BLS/ACLS training from American Heart Association.',
      doctorPicture: 'assets/pngimage/doctorGagan.png',
      isOpenDoctor: true),
  Doctors(
      doctorName: ' DR.Felizardo Cahoco',
      doctorSpeciality: 'eyes',
      doctorRating: '5',
      doctorHospital: ' Clinica Girassol ',
      doctorNumberOfPatient: '100000',
      doctorYearOfExperience: '20',
      doctorDescription:
          '''An ophthalmologist diagnoses and treats all eye diseases, performs eye surgery and prescribes and fits eyeglasses and contact lenses to correct vision problems. Many ophthalmologists are also involved in scientific research on the causes and cures for eye diseases and vision disorders''',
      doctorPicture: 'assets/pngimage/doctorfelizardo.png',
      isOpenDoctor: false),
  Doctors(
      doctorName: ' DR. Jocelino Fernandes',
      doctorSpeciality: 'Child',
      doctorRating: '5',
      doctorHospital: ' Maria Pia ',
      doctorNumberOfPatient: '5000',
      doctorYearOfExperience: '10',
      doctorDescription:
          '''A Pediatrician, or Children's Doctor, is responsible for the medical care of babies and children, typically up to the age of 21, and can include physical and psychological disorders and diseases. Their duties include diagnosis, treatment, and rehabilitation of the patient in a variety of work settings.''',
      doctorPicture: 'assets/pngimage/doctorjoelson.png',
      isOpenDoctor: true),
  Doctors(
      doctorName: ' DR. Antonio Nicolau ',
      doctorSpeciality: ' Skin',
      doctorRating: '4.2',
      doctorHospital: 'Neves Bendinha ',
      doctorNumberOfPatient: '2000',
      doctorYearOfExperience: '6',
      doctorDescription:
          '''Dermatologists are medical doctors who specialize in skin, hair and nails. Dermatologists also handle cosmetic disorders, like hair loss and scars. Your dermatologist will examine you, order lab tests, make a diagnosis and treat your condition with medication or a procedure.''',
      doctorPicture: 'assets/pngimage/doctorantonio.png',
      isOpenDoctor: false),
];
