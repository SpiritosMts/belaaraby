
import 'package:belaaraby/myPacks/jobType.dart';
import 'package:belaaraby/myPacks/myConstants.dart';
import 'package:belaaraby/myPacks/myTheme/myTheme.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


/// store marker widget
customMarkerImg(String logoUrl, String accepted, String jobType,String stName) {
  double markerH = 35.0;
  return Column(
    children: [
      ///store name
      Container(
          decoration: BoxDecoration(
            color: blueColHex.withOpacity(.6),
            borderRadius: BorderRadius.circular(10),
            //border: Border.all(color: blueColHex,width: .5)
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 3.0,top: 2.0,right: 5.0,left: 5.0),
            child: Text(  stName.length > 10 ? '${stName.substring(0, 10)}...' : stName,

              style: GoogleFonts.almarai(
                  textStyle:  TextStyle(
                      fontSize: 15.sp),
                  color: yellowColHex
              ),
            ),
          )
      ),
      ///store marker
      Stack(
        children: [
          ///marker
          Container(
            height: markerH.sp,

            child: FittedBox(
              child: Icon(
                Icons.add_location,
                color: accepted == 'yes' ? yellowColHex : Colors.redAccent,
                //size: ,
              ),
            ),
          ),
          ///logo
          Positioned(
            // height: 8.5.h,
            // left: 5.7.w,
            // top: 1.6.h,

            // left: (markerH* 1.8).sp,
            // top: (markerH* 2.5).sp,
            left: markerH * 0.46,
            top: markerH * 0.25,
            child: Container(

              decoration: BoxDecoration(color: blueColHex2, borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: (logoUrl != '' && showMarkerLogo)
                    ? CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  foregroundImage: NetworkImage(logoUrl),
                )
                // no logo
                    : SizedBox(

                    child: jobTypeIcon(jobType,(markerH * 0.7).sp)),
              ),
            ),
          ),

        ],
      ),
    ],
  );
}
