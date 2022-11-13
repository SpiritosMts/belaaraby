import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:belaaraby/models/itemModel.dart';
import 'package:belaaraby/models/storeModel.dart';
import 'package:belaaraby/myPacks/currencies.dart';
import 'package:belaaraby/myPacks/firebase/fireBase.dart';
import 'package:belaaraby/myPacks/jobType.dart';
import 'package:belaaraby/myPacks/myConstants.dart';
import 'package:belaaraby/myPacks/myTheme/myTheme.dart';
import 'package:belaaraby/myPacks/myVoids.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


///item_info
itemInfo(Item item){
  return SingleChildScrollView(
    child: Column(
        children: [
          //item_img
          SizedBox(
            width: 100.w,
            height: 250,
            child: item.imageUrl != ''
                ? Image.network(
              item.imageUrl!,
              fit: BoxFit.cover,
            )
                : Image.asset(
              'assets/noImage.jpg',
              fit: BoxFit.cover,
            ),
          ),
          //item_name/price
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(item.name!,
                        style: GoogleFonts.almarai(
                          textStyle: TextStyle(fontSize: 27.sp),
                        )),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${item.price} ${currencySymbol(item.currency)}",
                            style: GoogleFonts.almarai(
                                textStyle: TextStyle(fontSize: 21.sp),
                                decoration: (item.promoted == 'true' && item.newPrice != '') ? TextDecoration.lineThrough : null)),
                        if (item.promoted == 'true' && item.newPrice != '')
                          Text("${item.newPrice} ${currencySymbol(item.currency)}", style: GoogleFonts.almarai(textStyle: TextStyle(fontSize: 24.sp), color: yellowColHex)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //item_desc
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    child: Text(item.desc!,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.almarai(
                          textStyle: TextStyle(fontSize: 22.sp),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
  );
}

Item itemFromMap(itemMap){
  return Item(
    name: itemMap['name'],
    price: itemMap['price'],
    newPrice: itemMap['newPrice'],
    desc: itemMap['desc'],
    imageUrl: itemMap['imageUrl'],
    categ: itemMap['categ'],
    promoted: itemMap['promoted'],
    currency: itemMap['currency'],
  );
}


///ratingBox
ratingBox(storeID) {
  return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
    future: storesColl.doc(storeID).get(),
    builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
      if (snapshot.hasData) {
        //update();
        var oneStore = snapshot.data!;
        String stars = oneStore.get('stars');
        String raterCount = oneStore.get('raterCount');
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ///rating
            Row(
              children: [
                Text(stars, style: const TextStyle(fontSize: 20)),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
              ],
            ), //star
            const SizedBox(
              height: 5,
            ),
            ///raters
            Row(
              children: [
                const Icon(Icons.person, color: Colors.white70, size: 15), //person

                Text("($raterCount)", style: const TextStyle(fontSize: 14)),
              ],
            ),
          ],
        );
      } else {
        // no rating (loading)
        //return const CircularProgressIndicator();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ///rating
            Row(
              children:const [
                Text('X,X', style:  TextStyle(fontSize: 20)),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 30,
                ),
              ],
            ), //star
            const SizedBox(
              height: 5,
            ),
            ///raters
            Row(
              children:const [
                Icon(Icons.person, size: 15), //person

                Text("(X)", style:  TextStyle( fontSize: 14)),
              ],
            ),
          ],
        );
      }
    },
  );
}


///comments box
futureCommentBox(storeID) {
  return FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
    future: storesColl.doc(storeID).get(),
    builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
      if (snapshot.hasData) {
        //update();

        if (snapshot.hasError) {
          return const Text("");
        }

        if ((snapshot.hasData) && (!snapshot.data!.exists)) {
          return const Text("");
        }

        var oneStore = snapshot.data!;
        Map<String, dynamic> _raters = oneStore.get('raters');
        //return Text('snapshot has data');
        if(_raters.isNotEmpty){
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
            shrinkWrap: true,
            itemCount: _raters.length,
            itemBuilder: (BuildContext context, int index) {
              String key = _raters.keys.elementAt(index);

              /// single_Comment
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      // rater_name
                      title: Text(
                        key,
                        style: GoogleFonts.almarai(
                          fontSize: 19.sp,
                          color: hintYellowColHex3
                        ),
                      ),

                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          // rate_stars
                          RatingBarIndicator(
                            unratedColor: Colors.white24,

                            itemPadding:const EdgeInsets.symmetric(horizontal: 0),
                            rating: double.parse(_raters[key]['stars']),
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 15.0,
                            direction: Axis.horizontal,
                          ),
                          const SizedBox(height: 1),
                          // rater_comment
                          Text("${_raters[key]['comment']}",
                          style: GoogleFonts.almarai(
                            height: 1.4,
                            fontSize: 16.sp
                          ),
                          ),
                         const SizedBox(height: 3,)
                        ],
                      ),
                    ),
                    const Divider(
                      height: 2.0,
                    ),
                  ],
                ),
              );
            },
          );

        }else{
          return Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'no comments yet'.tr,
                textAlign: TextAlign.start,
                style: GoogleFonts.almarai(
                  fontSize: 17,

                ),
              ),
            ),
          );
        }
      } else {
        return const Text('');
      }
    },
  );
}




deleteStoreDialog(ctx,Store st){
  MyVoids().showNoHeader(ctx, txt: '${'are you sure you want to delete this store'.tr}\n"${st.name}" ؟ ').then((value) {
    if (value) {
      deleteStore(st,shouldBack: true);
    }
  });
}

deleteStore(Store st,{bool shouldBack =false}){
  /// delete store from coll
  storesColl.doc(st.id).delete().then((value) async {
    MyVoids().showTos('Store deleted'.tr);
    if(shouldBack)    Get.back();
    /// delete all images
    getImagesUrls(st,getAndDelete: true);
    /// delete store from users garages IDs
    removeElementsFromList([st.id],'stores',st.ownerID!,usersCollName).then((value) => authCtr.refreshCuser());




  }).catchError((error) => print("Failed to delete store: $error"));

}

declineStore(ctx,id) {
  MyVoids().showNoHeader(ctx, txt: 'are you sure you want to decline this store?'.tr,btnOkText: 'decline').then((value) {
    if (value) {
      /// decline store from coll
      storesColl.doc(id).update({
        'accepted':'no'
      }).then((value) async {
        MyVoids().showTos('Store declined'.tr);

        Get.back();

      }).catchError((error) => print("Failed to decline store: $error"));
    }
  });
}
approveStore(id) {
 
  /// approve store from coll
  storesColl.doc(id).update({
    'accepted':'yes'
  }).then((value) async {
    MyVoids().showTos('Store approved'.tr);

    Get.back();

  }).catchError((error) => print("Failed to approve store: $error"));
}

getImagesUrls(Store st,{bool getAndDelete=false})  {
  List<String> allItemsUrls =[];
  String logoUrl ='';
  List<String> imagesUrls =[];

  logoUrl = st.logo!;
  imagesUrls =st.images!;
  for (Map<String, dynamic> categ in st.categories!.values) {
    for (var item in categ.values) {
      allItemsUrls.add(item['imageUrl']);
    }
  }
  print('## store <${st.name}> has <${allItemsUrls.length}> item image');
  print('## store <${st.name}> has <${imagesUrls.length}> store image');
  print('## store <${st.name}> ${logoUrl!=''? 'DO':'D\'ONT'} has logo image');

  if(getAndDelete){



    if(allItemsUrls.isNotEmpty){
      for(var imgUrl in allItemsUrls){
        deleteFileByUrlFromStorage(imgUrl);
      }
    }
    if(imagesUrls.isNotEmpty){
      for(var imgUrl in imagesUrls){
        deleteFileByUrlFromStorage(imgUrl);
      }
    }

    if(logoUrl!=''){
      deleteFileByUrlFromStorage(logoUrl);
    }




  }


}


/// fill stores map with data from db
Map<String, Store> getStoreModelData(List<DocumentSnapshot> storesData){
  Map<String, Store> storeMap = {};

  //fill store map
  for (var doc in storesData) {
    List<String> images = listDynamicToString(doc.get('images'));
    bool showLogo = doc.get('showLogo');

    String logo = showLogo ? doc.get('logo') : '';
    GeoPoint pos = doc.get('coords');
    // fill stores products
    Map<String, dynamic> promos = doc.get("promo");
    Map<String, dynamic> categories = doc.get("categories");
    Map<String, dynamic> categImages = doc.get("categImages");
    List<String> allItemsList = [];
    for (Map<String, dynamic> categ in categories.values) {
      for (var item in categ.keys) {
        allItemsList.add(item.toString());
      }
    }
    //fill storeMap
    storeMap[doc.id] = Store(
      id: doc.id,
      //
      name: doc.get("name"),
      tax: doc.get("tax"),
      website: doc.get("website"),
      phone: doc.get("phone"),
      address: doc.get("address"),
      jobDesc: doc.get("jobDesc"),
      latitude: pos.latitude,
      longitude: pos.longitude,
      //
      promos: promos,
      categories: categories,
      categImages: categImages,
      allItemsList: allItemsList,
      //
      jobType: doc.get("jobType"),
      //
      openHours: doc.get('openHours'),
      openDays: doc.get('openDays'),
      //
      logo: logo,
      images: images,
      //
      ownerID: doc.get('ownerID'),
      ownerName: doc.get('ownerName'),
      ownerEmail: doc.get('ownerEmail'),
      //
      stars: doc.get('stars'),
      raterCount: doc.get('raterCount'),
      //
      accepted: doc.get('accepted'),
      showLogo: doc.get('showLogo'),
      //raters: not-to-use-here
    );
  }

  return storeMap;
}

/// Header_store_logo
headerLogo(logo,jobType) {
  double size = 85.0;
  double containerSize = 110.0;
  double borderWidth = 1.0;
  return Stack(
    //alignment: Alignment.bottomCenter,

    children: [

      /// head_job_logo
      Positioned(
        child: Container(
          width: containerSize,
          height: containerSize,
          decoration: BoxDecoration(
            color: yellowColHex.withOpacity(.3),
            borderRadius: BorderRadius.circular(90),
            border: Border.all(color: yellowColHex, width: borderWidth, style: BorderStyle.solid),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CircleAvatar(
              radius: 80.0,
              backgroundColor: blueColHex,
              child: ( logo != '' && showMarkerLogo)? storeLogo(logo,size):jobTypeIcon(jobType,size),
              // foregroundImage: ( gc.st.logo! != '' && showMarkerLogo)? NetworkImage( gc.st.logo!):jobTypeIcon(gc.st.jobType!),
            ),
          ),
        ),
      ),
     /// job_name
     Positioned(
       left: 10,
       right: 10,
       //top: 85,
       bottom: 0,


       child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Container(
              // constraints: BoxConstraints(
              //   maxWidth: 50,
              // ),

              padding: EdgeInsets.only(bottom:4,top: 4),
              decoration: BoxDecoration(
                color: blueColHex,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: yellowColHex, width: borderWidth, style: BorderStyle.solid),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child:    Text(
                       jobType,
                        textHeightBehavior: TextHeightBehavior(

                        ),
                        textAlign: TextAlign.center,
                        style: GoogleFonts.almarai(
                          textStyle: const TextStyle(
                              color: yellowColHex,
                              fontSize: 11,
                              fontWeight: FontWeight.w600
                          ),
                        )),
                  ),
                ),
              ),
            ),
          ),
       ),

      ///add own_logo btn
      Positioned(
          top: 0,
          left: 0,
          child: GestureDetector(
            onTap: (){
              print('## add own_logo');
            },
            child: Image.asset(
                height: 8.w,
                width: 8.w,
                'assets/plus.png'
            ),
          ),
      ),
    ],
  );
}





