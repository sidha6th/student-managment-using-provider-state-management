import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
part 'data_base.g.dart';

@HiveType(typeId: 0)
class StudentModel {  
  @HiveField(0)
  int? key;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String age;
  @HiveField(3)
  final String reg;
  @HiveField(4)
  final String std;
  @HiveField(5)
  String? img;
  StudentModel(
      {required this.name,
      required this.age,
      required this.reg,
      required this.std,
      this.img,
      this.key});
}

ValueNotifier<List<StudentModel>> studentDataNotifier = ValueNotifier([]);

// =======================DB Functions========================//



// getallstudents() async {
//   final studendDB = await Hive.openBox<StudentModel>('studentDB');
//   studentDataNotifier.value.clear();
//   studentDataNotifier.value.addAll(studendDB.values);
//   studentDataNotifier.notifyListeners();
// }








