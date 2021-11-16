// ignore_for_file: file_names

import 'package:cvapp/Experience.dart';

class Personne {
  String name;
  String phone;
  String email;
  String profilDescription;
  List<String> skills = [];
  List<Experience> experiences = [];

  Personne(
      {required this.name,
      required this.phone,
      required this.email,
      required this.profilDescription});

  setSkills(skills) {
    this.skills = skills;
  }

  setExperiences(experiences) {
    this.experiences = experiences;
  }
}
