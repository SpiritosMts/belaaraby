
import 'package:belaaraby/Home/selectedStore/categ/categViewRo.dart';
import 'package:belaaraby/Home/selectedStore/categ/itemViewRo.dart';
import 'package:belaaraby/addEditStore/components/productsPicker/addCateg/categ/categView.dart';
import 'package:belaaraby/addEditStore/components/productsPicker/addItem/item/itemView.dart';
import 'package:belaaraby/models/itemModel.dart';
import 'package:belaaraby/myPacks/currencies.dart';

import 'package:belaaraby/myPacks/myConstants.dart';
import 'package:belaaraby/myPacks/myTheme/myTheme.dart';
import 'package:belaaraby/myPacks/storeComponents/storeVoids.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


///grid card
double gridCardWidth = 50;
double gridCardHeight = 17;


itemGridCard(Item item, gc,{bool ro =false}) {
  return GestureDetector(
    onTap: () {
      gc.selectItem(item);
      if(ro){
        Get.to(() => ItemViewRo());

      }else{
        Get.to(() => ItemView());

      }

    },
    child: Stack(
      children: [
        SizedBox(
          width: 50.w,
          height: 27.h,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              color: blueColHex2,

              margin: const EdgeInsets.all(5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              shadowColor: Colors.white24,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0,top: 0.0),
                child: SizedBox(
                  child: Center(
                    child: Column(


                      children: [
                        //image
                        Container(
                          padding:const EdgeInsets.only(bottom: 7),
                          decoration:const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(15)),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(8)),
                            child: SizedBox(
                              width: 50.w,
                              height: 19.h,
                              child: FittedBox(
                                fit: BoxFit.cover,

                                //size: Size.fromRadius(30),
                                child: item.imageUrl! != ''
                                    ? Image.network(
                                  item.imageUrl!,
                                )
                                    : Image.asset('assets/noImage.jpg',

                                ),
                              ),
                            ),
                          ),
                        ),
                        //name - price
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 10.0,vertical:item.promoted=='true'? 0.0:8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // item_name
                              Flexible(
                                child: Text(

                                  item.name!,
                                  overflow: TextOverflow.ellipsis,

                                  maxLines: 1,
                                  style: GoogleFonts.almarai(
                                      textStyle: const TextStyle(fontWeight: FontWeight.w600),
                                      fontSize: 17.sp
                                  ),
                                ),
                              ),

                              // item_price
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${item.price} ${currencySymbol(item.currency)}",
                                    style: GoogleFonts.almarai(
                                      decoration: (item.promoted == 'true' && item.newPrice != '') ?
                                      TextDecoration.lineThrough : null,
                                      fontSize: 16.sp,

                                    ),
                                  ),

                                  if (item.promoted == 'true' && item.newPrice != '')
                                    Text(
                                      "${item.newPrice} ${currencySymbol(item.currency)}",
                                      style:  TextStyle(
                                        fontSize: 17.sp,
                                        color: yellowColHex,
                                      ),
                                    ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ],

                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        if (item.promoted == 'true')
          Positioned(
              top: 0,
              right: currLang == 'en' ? -1 : null,
              left: currLang == 'ar' ? -1 : null,
              child: Image.asset(height: 9.w, width: 9.w, 'assets/promo.png')),
      ],
    ),
  );
}
categGridCard(categName,categUrl, gc,ctx){

  return GestureDetector(
    onTap: (){
      gc.selectedCategory = categName;
      Get.to(()=>CategView());


    },
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: gridCardWidth.w,
        height: gridCardHeight.h,
        child: Card(
          color: blueColHex2,

          margin: const EdgeInsets.all(5.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),

          child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0,top: 0.0),
            child: SizedBox(
              child: Center(
                child: Column(


                  children: [
                    //image
                    Container(
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius:const  BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(8)),
                        child: SizedBox(
                          width: gridCardWidth.w,
                          height: gridCardHeight.h,
                          child: categUrl != ''
                              ? Image.network(
                            categUrl,
                            fit: BoxFit.cover,
                          )
                              : Image.asset('assets/noImage.jpg',
                            fit: BoxFit.cover,

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13,bottom: 4,right: 7,left: 7),
                      child: Text(

                        categName,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,

                        style: GoogleFonts.almarai(
                          textStyle:GoogleFonts.almarai(
                            fontWeight: FontWeight.w500,
                            //color: yellowColHex,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    )
                  ],

                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );

}

///read only
categCardRoHori(categName,categUrl, gc,ctx,){


  return GestureDetector(
    onTap: (){
      gc.selectedCategory = categName;
      Get.to(()=>CategViewRo());

    },
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        width: 50.w,
        //height: 20.h,
        child: Card(
          color: blueColHex2,

          margin: const EdgeInsets.all(5.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),

          child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0,top: 0.0),
            child: SizedBox(
              child: Center(
                child: Column(


                  children: [
                    //image
                    Container(
                      decoration:const BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        borderRadius:const  BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(8)),
                        child: SizedBox(
                          width: 50.w,
                          height: 15.h,
                          child: FittedBox(
                            fit: BoxFit.cover,
                            //size: Size.fromRadius(30),
                            child: categUrl != ''
                                ? Image.network(
                              categUrl,

                            )
                                : Image.asset('assets/noImage.jpg',


                            ),
                          ),
                        ),
                      ),
                    ),
                    //categ_name
                    Padding(
                      padding:  EdgeInsets.only(top: 1.5.h,bottom: 1.h,right: 7,left: 7),
                      child: Text(

                        categName,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,

                        style: GoogleFonts.almarai(
                          textStyle:GoogleFonts.almarai(
                              fontWeight: FontWeight.w500,
                              //color: yellowColHex,
                              fontSize: 17.5.sp
                          ),
                        ),
                      ),
                    )
                  ],

                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );

}
itemCardRoHori(Item item, gc) {
  return GestureDetector(
    onTap: () {
      gc.selectItem(item);
      Get.to(() => ItemViewRo());

    },
    child: Stack(
      children: [
        SizedBox(
          width: 50.w,
          //height: 30.h,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Card(
              color: blueColHex2,

              margin: const EdgeInsets.all(5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              shadowColor: Colors.white24,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.0,top: 0.0),
                child: SizedBox(
                  child: Center(
                    child: Column(


                      children: [
                        //image
                        Container(
                          // padding: EdgeInsets.only(bottom: 1.h),
                          decoration:const BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(15)),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(15),bottom: Radius.circular(8)),
                            child: SizedBox(
                              width: 50.w,
                              height: 15.h,
                              child: FittedBox(
                                fit: BoxFit.cover,


                                //size: Size.fromRadius(30),
                                child: item.imageUrl! != ''
                                    ? Image.network(
                                  item.imageUrl!,
                                )
                                    : Image.asset('assets/noImage.jpg',

                                ),
                              ),
                            ),
                          ),
                        ),
                        //name - price
                        Padding(
                          // padding:  EdgeInsets.symmetric(horizontal: 1.h,vertical:item.promoted=='true'? 1.h:3.h),
                          padding:  EdgeInsets.symmetric(horizontal: 1.h,vertical:item.newPrice != '' ? 0.9.h:2.2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // item_name
                              Flexible(
                                child: Text(
                                  item.name!,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: GoogleFonts.almarai(
                                    textStyle:  TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ),
                              ),
                              // item_price
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${item.price} ${currencySymbol(item.currency)}",
                                    style: TextStyle(
                                        decoration: (item.promoted == 'true' && item.newPrice != '') ?
                                        TextDecoration.lineThrough : null,
                                        color: Colors.white,
                                        fontSize: 17.sp

                                    ),
                                  ),
                                  if (item.promoted == 'true' && item.newPrice != '')
                                    Text(
                                      "${item.newPrice} ${currencySymbol(item.currency)}",
                                      style:  TextStyle(
                                          color: yellowColHex,
                                          fontSize: 18.sp

                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],

                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        if (item.promoted == 'true')
          Positioned(
              top: 0,
              right: currLang == 'en' ? -1 : null,
              left: currLang == 'ar' ? -1 : null,
              child: Image.asset(height: 30, width: 30, 'assets/promo.png')
          ),
      ],
    ),
  );
}
