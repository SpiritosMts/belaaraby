import 'package:get/get.dart';
import 'package:belaaraby/myPacks/myConstants.dart';

class RadioPickerCtr extends GetxController {
  // Default Radio Button Item
  String radioItem = 'متجر بقالة';

  // Group Value for Radio Button.
  int id = 1;

  onChangeRadio(data, val) {
    radioItem = data.name;
    id = data.index;
    update();
  }



  List<RadioItem> radioList = [
    RadioItem(
      index: 1,
      name: jobNames[1],
    ),
    RadioItem(
      index: 2,
      name: jobNames[2],
    ),
    RadioItem(
      index: 3,
      name: jobNames[3],
    ),
    RadioItem(
      index: 4,
      name: jobNames[4],
    ),
    RadioItem(
      index: 5,
      name: jobNames[5],
    ),
    RadioItem(
      index: 6,
      name: jobNames[6],
    ),
    RadioItem(
      index: 7,
      name: jobNames[7],
    ),
    RadioItem(
      index: 8,
      name: jobNames[8],
    ),
    RadioItem(
      index: 9,
      name: jobNames[9],
    ),
    RadioItem(
      index: 10,
      name: jobNames[10],
    ),
    RadioItem(
      index: 11,
      name: jobNames[11],
    ),
    RadioItem(
      index: 12,
      name: jobNames[12],
    ),
    RadioItem(
      index: 13,
      name: jobNames[13],
    ),
    RadioItem(
      index: 14,
      name: jobNames[14],
    ),
    RadioItem(
      index: 15,
      name: jobNames[15],
    ),
    RadioItem(
      index: 16,
      name: jobNames[16],
    ),
    RadioItem(
      index: 17,
      name: jobNames[17],
    ),
    RadioItem(
      index: 18,
      name: jobNames[18],
    ),
    RadioItem(
      index: 19,
      name: jobNames[19],
    ),
    RadioItem(
      index: 20,
      name: jobNames[20],
    ),
    RadioItem(
      index: 21,
      name: jobNames[21],
    ),
    RadioItem(
      index: 22,
      name: jobNames[22],
    ),
    RadioItem(
      index: 23,
      name: jobNames[23],
    ),
    RadioItem(
      index: 24,
      name: jobNames[24],
    ),
    RadioItem(
      index: 25,
      name: jobNames[25],
    ),
    RadioItem(
      index: 26,
      name: jobNames[26],
    ),
    RadioItem(
      index: 27,
      name: jobNames[27],
    ),
    RadioItem(
      index: 28,
      name: jobNames[28],
    ),
    RadioItem(
      index: 29,
      name: jobNames[29],
    ),
    RadioItem(
      index: 30,
      name: jobNames[30],
    ),
    RadioItem(
      index: 31,
      name: jobNames[31],
    ),
    RadioItem(
      index: 32,
      name: jobNames[32],
    ),
    RadioItem(
      index: 33,
      name: jobNames[33],
    ),
    RadioItem(
      index: 34,
      name: jobNames[34],
    ),
  ];
}

class RadioItem {
  String name;
  int index;

  RadioItem({required this.name, required this.index});
}
