import 'package:belaaraby/myPacks/myTheme/myTheme.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'dart:async';
import 'package:belaaraby/myPacks/myVoids.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:belaaraby/myPacks/myConstants.dart';


const List<String> jobNames= [
  '',
  'متجر بقالة',
  'مطعم',
  //ma9ha
  //7ala9
  //charikat etisalet
  'حلويات',
  'تجارة جملة',
  'سياحة وسفر',
  'صيدلية',
  'طبیب',
  'محامي',
  'محاسب',
  'ترجمان',
  'الكترونيات',
  'معرض سيارات',
  'طباعة وتصميم',
  'حرفة يدوية',
  'نجار',
  'حداد',
  //'لحام',
  //* 'أعمال حدائق',
  'بيطري',
  'مواد بناء',
  //* 'خدمات بنكية',
  'تاكسي',
  //'صيانة',
  'بائع لحوم',
  // 'زراعة',
  'أثاث منزلي',
  //bay3 almosta3ml
  //matjer albisa mosta3mla
  'مكتب توظيف',
  'تعليم',

  'صيانة سيارات',
  'نقل',
  'فندق',
  'مواد غدائية',
  'تسويق إلكتروني',
  //wikalat taswi9
  'شحن وإرسال الطرود',
];

storeLogo(String logoUrl,double size){
  return Image.network(
    logoUrl,

    fit: BoxFit.scaleDown,
    color: yellowColHex,
    height: size,
    width: size,
  );
}

jobTypeIcon(String jobType,double size) {
  String imagePath = '';

  if(jobType==jobNames[1]){
    imagePath = 'assets/jobType/grocery.png';
  }
  else if(jobType==jobNames[2]){
    imagePath = 'assets/jobType/restaurant.png';
  }
  else if(jobType==jobNames[3]){
    imagePath = 'assets/jobType/candy.png';
  }
  else if(jobType==jobNames[4]){
    imagePath = 'assets/jobType/jomla.png';
  }
  else if(jobType==jobNames[5]){
    imagePath = 'assets/jobType/plane.png';
  }
  else if(jobType==jobNames[6]){
    imagePath = 'assets/jobType/pharmacy.png';
  }
  else if(jobType==jobNames[7]){
    imagePath = 'assets/jobType/doctor.png';
  }
  else if(jobType==jobNames[8]){
    imagePath = 'assets/jobType/Attorney.png';
  }
  else if(jobType==jobNames[9]){
    imagePath = 'assets/jobType/accountant.png';
  }
  else if(jobType==jobNames[10]){
    imagePath = 'assets/jobType/translator.png';
  }
  else if(jobType==jobNames[11]){
    imagePath = 'assets/jobType/carpenter.png';
  }
  else if(jobType==jobNames[12]){
    imagePath = 'assets/jobType/smith.png';
  }
  else if(jobType==jobNames[13]){
    imagePath = 'assets/jobType/solderer.png';
  }
  else if(jobType==jobNames[14]){
    imagePath = 'assets/jobType/farmer.png';
  }
  else if(jobType==jobNames[15]){
    imagePath = 'assets/jobType/bank.png';
  }
  else if(jobType==jobNames[16]){
    imagePath = 'assets/jobType/veterinary.png';
  }
  else if(jobType==jobNames[17]){
    imagePath = 'assets/jobType/taxi.png';
  }
  else if(jobType==jobNames[18]){
    imagePath = 'assets/jobType/maintenance.png';
  }
  else if(jobType==jobNames[19]){
    imagePath = 'assets/jobType/meat.png';
  }
  else if(jobType==jobNames[20]){
    imagePath = 'assets/jobType/plant.png';
  }
  else if(jobType==jobNames[21]){
    imagePath = 'assets/jobType/home.png';
  }
  else if(jobType==jobNames[22]){
    imagePath = 'assets/jobType/office.png';
  }
  else if(jobType==jobNames[23]){
    imagePath = 'assets/jobType/education.png';
  }
  else if(jobType==jobNames[24]){
    imagePath = 'assets/jobType/electronics.png';
  }
  else if(jobType==jobNames[25]){
    imagePath = 'assets/jobType/car.png';
  }
  else if(jobType==jobNames[26]){
    imagePath = 'assets/jobType/design.png';
  }
  else if(jobType==jobNames[27]){
    imagePath = 'assets/jobType/Handicraft.png';
  }
  else if(jobType==jobNames[28]){
    imagePath = 'assets/jobType/Building.png';
  }

  else if(jobType==jobNames[29]){
    imagePath = 'assets/jobType/carMaint.png';
  }

  else if(jobType==jobNames[30]){
    imagePath = 'assets/jobType/bus.png';
  }

  else if(jobType==jobNames[31]){
    imagePath = 'assets/jobType/hotel.png';
  }

  else if(jobType==jobNames[32]){
    imagePath = 'assets/jobType/cannedFood.png';
  }

  else if(jobType==jobNames[33]){
    imagePath = 'assets/jobType/eMarketing.png';
  }
  else if(jobType==jobNames[34]){
    imagePath = 'assets/jobType/van.png';
  }
  else {
    imagePath = 'assets/jobType/grocery.png';
  }



  return Image.asset(
    imagePath,
    //fit: BoxFit.scaleDown,
    color: yellowColHex,
    height: size,
    width: size,
  );
}