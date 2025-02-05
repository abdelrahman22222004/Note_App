
import 'package:hive/hive.dart';
// create Type Adaptor 
//g ==> generaye
//dart ==> file extention 
part 'note_model.g.dart';
// this  line put into terminal to generate adapter the code =>> flutter packages pub run build_runner build
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  // each @HiveField ==> unique per class
   @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({required this.title, 
  required this.subTitle,
   required this.date, 
   required this.color});
}

 