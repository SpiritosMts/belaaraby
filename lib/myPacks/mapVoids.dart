import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'dart:async';
import 'package:belaaraby/myPacks/myVoids.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:belaaraby/myPacks/myConstants.dart';


void moveCamPosTo(gMapctr,double zoom,double lat, double lng) async {
  final CameraPosition newCameraPosition = CameraPosition(
    target: LatLng(lat, lng),
    zoom: zoom,
  );
  final  ctr = await gMapctr.future;

  ctr.animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));
}

void setDarkMap( gMapctr) async {

  String  darkMapStyle  = await rootBundle.loadString('assets/map_styles/dark.json');

  final ctr = await gMapctr.future;

  ctr.setMapStyle(darkMapStyle);
}

Future<LatLng> getCurrentLocation(gMapCtr,{LatLng posOnLocErr =const LatLng(0.0, 0.0)}) async {
  //default position
  LatLng currUserPos =posOnLocErr;
  /// without initial LatLng
 await Geolocator.getCurrentPosition(desiredAccuracy: geo.LocationAccuracy.best).then((pos)  {
    // affect curr user pos
     currUserPos =LatLng(pos.latitude, pos.longitude);
    print('### curr_pos >${currUserPos.latitude}/${currUserPos.longitude} <');
     //animate cam
    moveCamPosTo(gMapCtr,animateZoom,currUserPos.latitude, currUserPos.longitude);
  }).catchError((err) {
    print("## Failed to get user current location : $err");
    MyVoids().showTos('can\'t found you location'.tr);
  });
  return currUserPos;
}


