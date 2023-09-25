class DoctorMenu {
  String image;
  String name;
  DoctorMenu({required this.image, required this.name});
}

List<DoctorMenu> doctorMenu = [
  DoctorMenu(image: 'Ic_Dental.svg', name: 'Dental'),
  DoctorMenu(image: 'Ic_Heart.svg', name: 'Heart'),
  DoctorMenu(image: 'Ic_Hospitals.svg', name: 'Hospitals'),
  DoctorMenu(image: 'Ic_Medicines.svg', name: 'Medicines'),
  DoctorMenu(image: 'Ic_Physician.svg', name: 'Physician'),
  DoctorMenu(image: 'Ic_Skin.svg', name: 'Skin'),
  DoctorMenu(image: 'Ic_Surgeon.svg', name: 'Surgeon'),
];
