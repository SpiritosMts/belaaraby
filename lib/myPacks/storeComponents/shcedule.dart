import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:belaaraby/models/storeModel.dart';
import 'package:belaaraby/myPacks/myTheme/myTheme.dart';
import 'package:belaaraby/myPacks/myVoids.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

double abrSize = 13;

List<String> abr = [
  'mo',
  'tu',
  'we',
  'th',
  'fr',
  'sa',
  'su',
];
String noWork ='--:--';
/// check if store is open depends on time.now() and store open/close shcedule
bool isOpen(Store st) {

  List<bool> openDays = [];
  Map openDaysData = {};
  Map openHoursData = {};

  openDaysData = mapToString(st.openDays!);
  openHoursData = mapToString(st.openHours!);
  openDays = [
    openDaysData['mo'] == 'true',
    openDaysData['tu'] == 'true',
    openDaysData['we'] == 'true',
    openDaysData['th'] == 'true',
    openDaysData['fr'] == 'true',
    openDaysData['sa'] == 'true',
    openDaysData['su'] == 'true',
  ];


  var today = DateTime.now();

  for (int i = 1; i <= 7; i++) {
    if (today.weekday == i) {
      //if st opening in this day of week
      if (openDays[i - 1]) {
        String formattedTodayDate = DateFormat('yyyy-MM-dd').format(today);

        String? openData = openHoursData['${abr[i - 1]}_o'];
        String? closeData = openHoursData['${abr[i - 1]}_c'];

        DateTime openTime = DateTime.parse('$formattedTodayDate $openData:00');
        DateTime closeTime = DateTime.parse('$formattedTodayDate $closeData:00');

        var opening = (today.isBefore(closeTime) && today.isAfter(openTime));
        return opening;
      }
    }
  }
  return false;
}
/// Shcedule dialog
showShcedule( ctx,Store st) {
  Map openHoursData = {};
  openHoursData = mapToString(st.openHours!);
  Map openDaysData = {};

  List<bool> openDays = [];

  openDaysData = mapToString(st.openDays!);
  openDays = [
    openDaysData['mo'] == 'true',
    openDaysData['tu'] == 'true',
    openDaysData['we'] == 'true',
    openDaysData['th'] == 'true',
    openDaysData['fr'] == 'true',
    openDaysData['sa'] == 'true',
    openDaysData['su'] == 'true',
  ];

  double _width = MediaQuery.of(ctx).size.width;
  double _height = MediaQuery.of(ctx).size.height;

  return AwesomeDialog(
    dialogBackgroundColor: blueColHex2,

    isDense: false,
    dismissOnBackKeyPress: true,
    context: ctx,
    dismissOnTouchOutside: true,
    animType: AnimType.SCALE,
    headerAnimationLoop: false,
    dialogType: DialogType.INFO,
    body: Flexible(
      child: Container(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0, top: 15.0),
        width: MediaQuery.of(ctx).size.width,
        child: Column(
          children: [
            Text(
              'Work Times'.tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            const SizedBox(height: 14.0),
            Container(
              //padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: DataTable(
                decoration: BoxDecoration(),
                //checkboxHorizontalMargin: 20,
                columnSpacing: _width * 0.08,
                dataRowHeight: 40,
                //horizontalMargin: 20,
                columns:  [
                  const DataColumn(label: Text('', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Opening'.tr, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
                  DataColumn(label: Text('Closing'.tr, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold))),
                ],
                rows: [
                  DataRow(cells: [
                    DataCell(Text('Mon'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[0]? openHoursData['${abr[0]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[0]? openHoursData['${abr[0]}_c']:noWork))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Tue'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[1]? openHoursData['${abr[1]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[1]? openHoursData['${abr[1]}_c']:noWork))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Wed'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[2]? openHoursData['${abr[2]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[2]? openHoursData['${abr[2]}_c']:noWork))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Thu'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[3]? openHoursData['${abr[3]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[3]? openHoursData['${abr[3]}_c']:noWork))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Fri'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[4]? openHoursData['${abr[4]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[4]? openHoursData['${abr[4]}_c']:noWork))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sat'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[5]? openHoursData['${abr[5]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[5]? openHoursData['${abr[5]}_c']:noWork))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('Sun'.tr, style: TextStyle(fontSize: abrSize, fontWeight: FontWeight.bold))),
                    DataCell(Center(child: Text(openDays[6]?  openHoursData['${abr[6]}_o']:noWork))),
                    DataCell(Center(child: Text(openDays[6]? openHoursData['${abr[6]}_c']:noWork))),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ).show();
}

