import 'package:hive/hive.dart';
part 'famil.g.dart';
//run command flutter packages pub run build_runner build

@HiveType(typeId: 1)
class Famille {
  @HiveField(0)
  String name;
  Famille(this.name);
}
