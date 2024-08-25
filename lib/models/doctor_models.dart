class DoctorModel{
  final String name;
  final String position;
  final int averageReviews;
  final int totalReiews;
  final String Profiles;

  DoctorModel({required this.name, required this.position, required this.averageReviews, required this.totalReiews, required this.Profiles});
}
List<DoctorModel> nearbydoctor=[
  
  DoctorModel(name: "dr Skylar Korsgard", position: "", averageReviews: 3, totalReiews: 195, Profiles: "assets/doctor_1.jpg"),
  DoctorModel(name: "dr Adison Scheifer", position: "", averageReviews: 3, totalReiews: 195, Profiles: "assets/doctor_2.jpg"),
  DoctorModel(name: "dr alicha selford", position: "", averageReviews: 3, totalReiews: 195, Profiles: "assets/doctor_3.jpg")
];