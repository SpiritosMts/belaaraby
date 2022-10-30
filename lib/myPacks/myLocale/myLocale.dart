import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'arabic': 'العربية ',
          'english': 'الإنجليزية',
          'french': 'الفرنسية',
          'Email': 'البريد الإلكتروني',
          'Enter your email': 'أدخل بريدك الإلكتروني',
          'email can\'t be empty': 'لا يمكن أن يكون البريد الإلكتروني شاغراً',
          'Enter a valid email': 'أدخل بريدًا إلكترونيًا صالحًا',
          'Password': 'كلمة المرور', //label
          'Enter your password': 'أدخل كلمة المرور', //hint
          'password can\'t be empty': 'كلمة المرور لا يمكن أن تكون فارغة', //err
          'Enter a valid password of at least 6 characters': 'أدخل كلمة مرور من 6 أحرف على الأقل', //err
          'Forgot Password?': 'هل نسيت كلمة المرور؟',
          'Sign In': 'تسجيل الدخول',
          'you have no account?': 'ليس لديك حساب؟',
          'Sign Up': 'انشاء حساب',
          'Verification': 'التحقق',
          'Your email is not verified\nVerify now?': 'لم يتم التحقق من بريدك الإلكتروني\nتحقق الآن؟',
          'Verify': 'تحقق',
          'Please Verify': 'الرجاء التحقق',
          'Are you sure you want to delete this image': 'هل أنت متأكد أنك تريد حذف هذه الصورة',
          'Verify your account': 'التحقق من حسابك',
          'An email has been sent to': 'تم إرسال بريد إلكتروني إلى',
          'Send email reset link!': "إرسال رابط إعادة تعيين البريد الإلكتروني!",
          'Send': 'إرسال',
          'Back': 'رجوع',
          'cancel': 'إلغاء',
          'Cancel': 'إلغاء',
          'delete': 'حذف',
          'Create account': 'إنشاء حساب',
          'name can\'t be empty': 'الاسم لا يمكن أن يكون شاغراً', //err
          'Enter your name': 'أدخل اسمك',
          'Full Name': 'الاسم الكامل',
          'already have an account': 'لديك حساب بالفعل؟',
          'Welcome': 'مرحبا',
          'Loading': 'تحميل',
          'Please wait': 'الرجاء الانتظار',
          'Failed': 'فشل',
          'Success': 'نجاح',
          'Save': 'حفظ',
          'store of': 'مالك المحل',
          'comments': 'التعليقات',
          'Open': 'مفتوح',
          'Closed': 'مغلق',
          'Rate': 'تقييم',
          'products': 'المنتجات',
          'promo': 'ترويج',
          'km': 'كم',
          'Store List': 'قائمة المحلات',
          'call': 'اتصل',
          'schedule': 'الجدول',
          'Work Times': 'أوقات العمل',
          'Opening': 'فتح',
          'Closing': 'إغلاق',
          'Mon': 'الإثنين',
          'Tue': 'الثلاثاء',
          'Wed': 'الأربعاء',
          'Thu': 'الخميس',
          'Fri': 'الجمعة',
          'Sat': 'السبت',
          'Sun': 'الأحد',
          'Share your opinion': 'شارك رأيك',
          'comment': 'تعليق',
          'failed to send review': 'فشل في إرسال تقيمك',
          'your review has been successfully sent': 'تم إرسال تقيمك بنجاح',
          'tax number': 'الرقم الضريبي',
          'store name': 'اسم المتجر',
          'phone number': 'رقم الهاتف',
          'address local': 'العنوان المحلي',
          'description': 'الوصف',
          'choose location': 'اختر موقعًا',
          'choose logo': 'اختر شعارا',
          'store type': 'نوع المتجر',
          'enter tax number': 'ادخل الرقم الضريبي',
          'enter website': 'ادخل الموقع الكتروني',
          'enter store name': 'ادخل اسم المتجر',
          'enter phone number': 'ادخل رقم الهاتف',
          'enter address local': 'ادخل العنوان المحلي',
          'Ok': 'حسناً',
          'Exit': 'الغاء',
          'hours': 'الساعة',
          'minutes': 'الدقيقة',
          'Add': 'إضافة',
          'Failed to update store': 'فشل قي تحديث المتجر',
          'store updated successfully': 'تم تحديث المتجر بنجاح',
          'you must fill in the fields': 'يجب عليك ملء الحقول',
          'Store deleted': 'تم حذف المتجر',
          'you must log in to your account to add or modify your stores': "يجب عليك تسجيل الدخول إلى حسابك لإضافة أو تعديل متاجرك",
          'are you sure you want to delete this store': 'هل أنت متأكد أنك تريد حذف هذا المتجر',
          'please verify network': 'الرجاء التحقق من الشبكة',
          'Failed to Connect': 'فشل الاتصال',
          'Sign out': 'تسجيل الخروج',
          'My Stores': 'متاجري',
          'Stores List': 'قائمة المتاجر',
          'News': 'الاخبار',
          'Belaaraby': 'بالعربي',
          'edit': 'تعديل',
          'Gallery': 'الهاتف',
          'Camera': 'الكاميرا',
          'State': 'الحالة',
          'accepted': 'مقبول',
          'refused': 'مرفوض',
          'review': 'تحت الدرس',
          'Failure': 'فشل',
          'select category': 'حدد الفئة',
          'categories': 'الفئات',
          'Terms and Policies': 'الشروط والسياسات',
          'no categories': 'لا يوجد فئات',
          'please select or create new category': 'الرجاء تحديد أو إنشاء فئة جديدة',
          'category has no items': 'الفئة لا تحتوي على منتجات',
          'Add Item': 'إضافة منتج',
          'item name': 'إسم المنتج',
          'empty data': 'لا يوجد معطيات',
          'no promoted items found': 'لا يوجد منتجات مروجة',
          'Choose source': 'اختر المصدر',
          'general info': 'معلومات عامة',
          'you need to select or create new category': "تحتاج إلى تحديد أو إنشاء فئة جديدة",
          'you need to verify your account': "تحتاج إلى التحقق من حسابك",
          'User not found': 'المستخدم غير موجود',
          'Wrong password': 'كلمة مرور خاطئة',
          'Email already in use': 'البريد الإلكتروني قيد الاستخدام بالفعل',
          'Weak password': 'كلمة مرور ضعيفة',
          'can\'t found you location': 'تعذر العثور على موقع',
          'store added successfully': 'تمت إضافة المتجر بنجاح',
          'Failed to add store': 'فشل إضافة المتجر',
          'you need to pick a location': 'تحتاج إلى اختيار موقع',
          'you need to select a category to remove': 'تحتاج إلى تحديد فئة لإزالتها',
          'please activate your GPS to get the locations of the nearest stores': 'الرجاء تفعيل نظام (GPS) للحصول على مواقع أقرب المتاجر',
          'you cannot rate stores until you are registered': 'لا يمكنك تقييم المتاجر حتى تقوم بالتسجيل',
          'you can\'t rate stores while you have at least one': 'لا يمكنك تقييم المتاجر عندما يكون لديك متجر واحد على الأقل',
          'no stores found': 'لم يتم العثور على متاجر',
          'you have no stores yet': 'ليس لديك متاجر بعد',
          'Modify Store': "تعديل المتجر",
          'Add your own store': 'أضف متجرك الخاص',
          'Add your store': 'أضف متجر',
          'promos': 'مروجات',
          'Add video': 'إضافة فيديو',
          'Add post': 'إضافة منشور',
          'Price': 'السعر',
          'Euro': 'يورو',
          'Posts': 'المنشورات',
          'Settings': 'الإعدادات',
          'Videos': 'أشرطة فيديو',
          'please select category': 'الرجاء تحديد الفئة',
          'Promote Products': 'الترويج للمنتجات',
          'Manage Products': 'إدارة المنتجات',
          'New category added': 'تمت إضافة فئة جديدة',
          'Remove': 'إزالة',
          'Category already exist': 'الفئة موجودة بالفعل',
          'failed to add category': 'فشل في إضافة الفئة',
          'category removed': 'تمت إزالة الفئة',
          'failed to remove category': 'فشل إزالة الفئة',
          'Add new category': 'إضافة فئة جديدة',
          'Category': 'الفئة',
          'enter new category': 'أدخل فئة جديدة',
          'category can\'t be empty': 'لا يمكن أن يكون حقل الفئة فارغًا',
          'Are you sure you want to remove this category': 'هل أنت متأكد من أنك تريد إزالة هذه الفئة',
          'Stop Promo': 'إيقاف الترويج',
          'Promo': 'ترويج',
          'Description': 'الوصف',
          'Enter description': 'أدخل الوصف',
          'Add Image': 'إضافة صورة',
          'price can\'t be empty': 'لا يمكن ترك حقل السعر فارغًا',
          'Enter price': 'أدخل السعر',
          'Add New Item': 'إضافة منتج جديد',
          'no added items yet': 'لا توجد منتجات مضافة بعد',
          'no comments yet': 'لا توجد تعليقات حتى الآن',
          'Sign up now': 'إشترك الان',
          'Guest': 'زائر',
          'you must log in to your account to add new store': 'يجب عليك تسجيل الدخول إلى حسابك لإضافة متجر جديد',
          'no added posts yet': 'لا توجد منشورات حتى الان',
          'Title': 'العنوان',
          'admin access': 'رخصة التحكم',
          'User removed': 'تمت إزالة المستخدم',
          'are you sure you want to remove this user': 'هل أنت متأكد من أنك تريد إزالة هذا المستخدم',
          'Admin removed': 'تمت إزالة رخصة التحكم',
          'New Admin Added': 'تمت إضافة مسؤول جديد',
          'Yes': 'نعم',
          'are you sure you want to give this user full control': 'هل أنت متأكد من أنك تريد منح هذا المستخدم التحكم الكامل',
          'stores number': 'عدد المحلات',
          'join date': 'تاريخ الانضمام',
          'show logo': 'إظهار الشعار',
          'Delete': 'حذف',
          'Store approved': 'تمت الموافقة على المتجر',
          'Store declined': 'تم رفض المتجر',
          'Decline': 'رفض',
          'decline': 'رفض',
          'Approve': 'موافقة',
          'Approved Stores': 'المتاجر المتاحة',
          "Stores Requests": "طلبات المتاجر",
          'Users List': 'قائمة المستخدمين',
          'are you sure you want to delete this video?': 'هل أنت متأكد أنك تريد حذف هذا الفيديو؟',
          'Video deleted': 'تم حذف الفيديو',
          'Post deleted' :'تم حذف المنشور',
          'are you sure you want to delete this post?': 'هل أنت متأكد أنك تريد حذفهذا المنشور ؟',
          'no added videos yet': 'لا توجد مقاطع فيديو مضافة حتى الآن',
          'you need to stop item promotion to modify it': 'تحتاج إلى إيقاف ترويج المنتج لتعديله',
          'Add New Post': 'إضافة منشور',
          'Url': 'الرابط',
          'url can\'t be empty': 'حقل الرابط لا يمكن أن يكون شاغراً',
          'Enter url': 'أدخل الرابط',
          'title can\'t be empty': 'حقل العنوان لا يمكن أن يكون شاغراً ',
          'Enter title': 'أدخل العنوان',
          'Add New Video': 'إضافة فيديو',
          'New post added': 'تمت إضافة منشور جديد',
          'failed to add post': 'فشل في إضافة المنشور',
          'New video added': 'تمت إضافة فيديو جديد',
          'failed to add video': 'فشل في إضافة الفيديو',
          'your account has been verified\nplease reconnect': 'تم التحقق من حسابك \n الرجاء إعادة التسجيل',
          'explore business':'اكتشف الأعمال',
          'Enter item name': 'أدخل إسم المنتج ',
          'Modify Item': 'تعديل المنتج',
          'Change Image': 'تغيير الصورة',
          'Update': 'تحديث',
          'your store will be verified\nas soon as possible': 'سيتم التحقق من متجرك\nفي أقرب وقت ممكن',
          'Language': 'اللغة',
          'Dark Mode': 'الوضع الليلي',
          'general settings': 'الاعدادات العامة',
          'choose language': 'اختر اللغة',
          'Promo Item': 'ترويج المنتج',
          'Enter new price': 'أدخل سعرًا جديدًا',
          'new price': 'سعر جديد',
          'current price': 'السعر الحالي',
          'search for product':'ابحث عن منتج',
          'no products found': 'لا توجد منتجات',
          'Your guide to markets and products': 'دليلك للاسواق والمنتجات',
          'Notifications': 'الإشعارات',
          'no users found': 'لم يتم العثور على مستخدمين',
          'email': 'البريد',
          'Ads management': 'إدارة الإعلانات',
          'no added ads yet': 'لا توجد إعلانات مضافة حتى الآن',
          'Add Ads': 'إضافة إعلان',
          'ad added': 'تم إضافة الاعلان',
          'failed to delete ad': 'فشل حذف الإعلان',
          'Advertisement': 'الإعلانات',
          'ad deleted': 'تم حذف الإعلان',
          'failed to upload ad': 'فشل تحميل الإعلان',
          'Are you sure you want to delete this Ad': 'هل أنت متأكد من أنك تريد حذف هذا الإعلان',
          'cant find given address': 'تعذر العثور على العنوان المحدد',
          'you need to write an address': 'تحتاج إلى كتابة عنوان',
          'job type': 'نوع الخدمة',
          'email of owner': 'بريد صاحب المحل',


          'refresh': 'تحديث',
          'search for user': 'ابحث عن المستخدم',
          'with his stores': 'مع جميع متاجره',
          'Images': 'الصور',
          'no chosen images': 'لا توجد صور مختارة',
          'directions': 'اتجاهات',
          'overview': 'نظرة عامة',
          'Add New Category': 'إضافة فئة جديدة',
          'no categories found': 'لم يتم العثور على فئات',
          'Add Category': 'أضف فئة',
          'category name': 'اسم الفئة',
          'Interface': 'الواجهة',
          'stores of': 'مالك المحل',
          'Paste': 'لصق',
          'Copy': 'نسخ',
          'no categories yet': 'لا توجد فئات بعد',
          'category updated': 'تم تحديث الفئة',
          'failed to updated category': 'فشل في تحديث الفئة',
          'category already exist': 'الفئة موجودة بالفعل',
          // 'euro':'يورو',
          // 'lira':'ليرة',
          // 'dollar':'دولار',
          'choose currency':'اختر العملة',
          'edit category':'تعديل الفئة',
          'remove category':'إزالة الفئة',
          'website': 'الموقع الكتروني',
          'item promoted': 'تم ترويج المنتج',
          'end item promotion': 'تم إيقاف الترويج',
          'item removed': 'تم حذف المنتج',
          'New item added': 'تم إضافة المنتج',


        },
        'en': {

          'explore business':'explore business',
          'search for product':'search for product',
          'your account has been verified\nplease reconnect': 'your account has been verified\nplease reconnect',
          'no added posts yet': 'no added posts yet',
          'Title': 'Title',
          'New item added': 'New item added',
          'item removed': 'item removed',
          'end item promotion': 'end item promotion',
          'item promoted': 'item promoted',
          'website': 'website',
          // 'euro':'euro',
          // 'lira':'lira',
          // 'dollar':'dollar',

          'edit category':'edit category',
          'remove category':'remove category',
          'choose currency':'choose currency',

          'category already exist': 'category already exist',
          'failed to updated category': 'failed to updated category',
          'category updated': 'category updated',
          'no categories yet': 'no categories yet',
          'Interface': 'Interface',
          'category name': 'category name',
          'Add Category': 'Add Category',
          'no categories found': 'no categories found',
          'Add New Category': 'Add New Category',
          'overview': 'overview',
          'directions': 'directions',
          'Images': 'Images',
          'no chosen images': 'no chosen images',
          'search for user': 'search for user',
          'no users found': 'no users found',
          'stores of': 'stores of',
          'refresh': 'refresh',
          'Paste': 'Paste',
          'Copy': 'Copy',
          'email of owner': 'email of owner',
          'you need to write an address': 'you need to write an address',
          'cant find given address': 'cant find given address',
          'Are you sure you want to delete this Ad': 'Are you sure you want to delete this Ad',
          'ad added': 'ad added',

          'ad deleted': 'ad deleted',
          'Advertisement': 'Advertisement',

          'failed to delete ad': 'failed to delete ad',
          'failed to upload ad': 'failed to upload ad',
          'image added': 'image added',
          'Add Ads': 'Add Ads',
          'no added ads yet': 'no added ads yet',

          'Ads management': 'Ads management',
          'Notifications': 'Notifications',
          'Your guide to markets and products': 'Your guide to markets and products',
          'no products found': 'no products found',
          'choose language': 'choose language',
          'general settings': 'general settings',
          'your store will be verified\nas soon as possible': 'your store will be verified\nas soon as possible',
          'Promo Item': 'Promo Item',
          'Enter new price': 'Enter new price',
          'new price': 'new price',
          'current price': 'current price',
          'Update': 'Update',
          'Language': 'Language',
          'Change Image': 'Change Image',
          'Modify Item': 'Modify Item',
          'Promo': 'Promo',
          'Dark Mode': 'Dark Mode',
          'Enter item name': 'Enter item name',
          'admin access': 'admin access',
          'User removed': 'User removed',
          'are you sure you want to remove this user': 'are you sure you want to remove this user',
          'Admin removed': 'Admin removed',
          'New Admin Added': 'New Admin Added',
          'Yes': 'Yes',
          'with his stores': 'with his stores',
          'are you sure you want to give this user full control': 'are you sure you want to give this user full control',
          'stores number': 'stores number',
          'join date': 'join date',
          'show logo': 'show logo',
          'Delete': 'Delete',
          'Store approved': 'Store approved',
          'Store declined': 'Store declined',
          'Decline': 'Decline',
          'decline': 'decline',
          'Approve': 'Approve',
          'Approved Stores': 'Approved Stores',
          "Stores Requests": "Stores Requests",
          'Users List': 'Users List',
          'are you sure you want to delete this video?': 'are you sure you want to delete this video?',
          'Video deleted': 'Video deleted',
          'Post deleted' :'Post deleted',
          'are you sure you want to delete this post?': 'are you sure you want to delete this post?',
          'no added videos yet': 'no added videos yet',
          'you need to stop item promotion to modify it': 'you need to stop item promotion to modify it',
          'Add New Post': 'Add New Post',
          'Url': 'Url',
          'url can\'t be empty': 'url can\'t be empty',
          'Enter url': 'Enter url',
          'title can\'t be empty': 'title can\'t be empty',
          'Enter title': 'Enter title',
          'Add New Video': 'Add New Video',
          'New post added': 'New post added',
          'failed to add post': 'failed to add post',
          'New video added': 'New video added',
          'failed to add video': 'failed to add video',
          'arabic': 'arabic',
          'english': 'english',
          'french': 'french',
          'Email': 'Email',
          'email': 'email',
          'Enter your email': 'Enter your email',
          'email can\'t be empty': 'email can\'t be empty',
          'Enter a valid email': 'Enter a valid email',
          'Password': 'Password', //label
          'Enter your password': 'Enter your password', //hint
          'password can\'t be empty': 'password can\'t be empty', //err
          'Enter a valid password of at least 6 characters': 'Enter a valid password of at least 6 characters', //err
          'Forgot Password?': 'Forgot Password?',
          'Sign In': 'Sign In',
          'Guest': 'Guest',
          'you have no account?': 'you have no account?',
          'Sign Up': 'Sign Up',
          'Verification': 'Verification',
          'Your email is not verified\nVerify now?': 'Your email is not verified\nVerify now?',
          'Verify': 'Verify',
          'Please Verify': 'Please Verify',
          'Are you sure you want to delete this image': 'Are you sure you want to delete this image',
          'Verify your account': 'Verify your account',
          'An email has been sent to': 'An email has been sent to',
          'Send email reset link!': 'Send email reset link!',
          'Send': 'Send',
          'Back': 'Back',
          'cancel': 'cancel',
          'Cancel': 'Cancel',
          'delete': 'delete',
          'Create account': 'Create account',
          'name can\'t be empty': 'name can\'t be empty', //err
          'Enter your name': 'Enter your name',
          'Full Name': 'Full Name',
          'already have an account': 'already have an account',
          'Welcome': 'Welcome',
          'Loading': 'Loading',
          'Please wait': 'Please wait',
          'Failed': 'Failed',
          'Success': 'Success',
          'Save': 'Save',
          'store of': 'store of',
          'comments': 'comments',
          'no comments yet': 'no comments yet',
          'Open': 'Open',
          'Closed': 'Closed',
          'Rate': 'Rate',
          'products': 'products',
          'promo': 'promo',
          'km': 'km',
          'call': 'call',
          'schedule': 'schedule',
          'Store List': 'Store List',
          'Work Times': 'Work Times',
          'Opening': 'Opening',
          'Closing': 'Closing',
          'Mon': 'Mon',
          'Tue': 'Tue',
          'Wed': 'Wed',
          'Thu': 'Thu',
          'Fri': 'Fri',
          'Sat': 'Sat',
          'Sun': 'Sun',
          'Share your opinion': 'Share your opinion',
          'comment': 'comment',
          'you must log in to your account to add new store': 'you must log in to your account to add new store',
          'failed to send review': 'failed to send review',
          'your review has been successfully sent': 'your review has been successfully sent',
          'tax number': 'tax number',
          'store name': 'store name',
          'phone number': 'phone number',
          'address local': 'address local',
          'description': 'description',
          'choose location': 'choose location',
          'choose logo': 'choose logo',
          'store type': 'store type',
          'job type': 'job type',
          'Ok': 'Ok',
          'Exit': 'Exit',
          'hours': 'hours',
          'minutes': 'minutes',
          'Ghest': 'Ghest',
          'Add': 'Add',
          'Store deleted': 'Store deleted',
          'Failed to update store': 'Failed to update store',
          'store updated successfully': 'Store deleted',
          'you must fill in the fields': 'you must fill in the fields',
          'are you sure you want to delete this store': 'are you sure you want to delete this store',
          'please verify network': 'please verify network',
          'Failed to Connect': 'Failed to Connect',
          'Sign out': 'Sign out',
          'My Stores': 'My Stores',
          'Stores List': 'Stores List',
          'News': 'News',
          'Belaaraby': 'Belaaraby',
          'edit': 'edit',
          'Gallery': 'Gallery',
          'Camera': 'Camera',
          'State': 'State',
          'accepted': 'accepted',
          'refused': 'refused',
          'review': 'review',
          'Failure': 'Failure',
          'promos': 'promos',
          'Add video': 'Add video',
          'Videos': 'Videos',
          'Add post': 'Add post',
          'Price': 'Price',
          'Euro': 'Euro',
          'Posts': 'Posts',
          'no added items yet': 'no added items yet',
          'Settings': 'Settings',
          'Terms and Policies': 'Terms and Policies',
          'please select category': 'please select category',
          'Promote Products': 'Promote Products',
          'Manage Products': 'Manage Products',
          'New category added': 'New category added',
          'Remove': 'Remove',
          'Category already exist': 'Category already exist',
          'failed to add category': 'failed to add category',
          'category removed': 'category removed',
          'failed to remove category': 'failed to remove category',
          'Add new category': 'Add new category',
          'Category': 'Category',
          'enter new category': 'enter new category',
          'category can\'t be empty': 'category can\'t be empty',
          'Are you sure you want to remove this category': 'Are you sure you want to remove this category',
          'Stop Promo': 'Stop Promo',
          'Description': 'Description',
          'Enter description': 'Enter description',
          'Add Image': 'Add Image',
          'price can\'t be empty': 'price can\'t be empty',
          'Enter price': 'Enter price',
          'Add New Item': 'Add New Item',
          'Sign up now': 'Sign up now',
          'select category': 'select category',
          'categories': 'categories',
          'no categories': 'no categories',
          'please select or create new category': 'please select or create new category',
          'category has no items': 'category has no items',
          'Add Item': 'Add Item',
          'item name': 'item name',
          'empty data': 'empty data',
          'no promoted items found': 'no promoted items found',
          'Choose source': 'Choose source',
          'general info': 'general info',
          'you need to select or create new category': 'you need to select or create new category',
          'you need to verify your account': 'you need to verify your account',
          'User not found': 'User not found',
          'Wrong password': 'Wrong password',
          'Email already in use': 'Email already in use',
          'Weak password': 'Weak password',
          'can\'t found you location': 'can\'t found you location',
          'store added successfully': 'store added successfully',
          'Failed to add store': 'Failed to add store',
          'you need to pick a location': 'you need to pick a location',
          'you need to select a category to remove': 'you need to select a category to remove',
          'please activate your GPS to get the locations of the nearest stores': 'please activate your GPS to get the locations of the nearest stores',
          'you cannot rate stores until you are registered': 'you cannot rate stores until you are registered',
          'you can\'t rate stores while you have at least one': 'you can\'t rate stores while you have at least one',
          'no stores found': 'no stores found',
          'you have no stores yet': 'you have no stores yet',
          'Modify Store': 'Modify Store',
          'Add your own store': 'Add your own store',
          'Add your store': 'Add your store',
          'you must log in to your account to add or modify your stores': 'you must log in to your account to add or modify your stores',
        },
        'fr': {
          'arabic': 'arabe',
          'english': 'anglais',
          'french': 'français',

          //auth (signIn)//
          //email
          'Email': 'Email',
          'Enter your email': 'Entrer votre email',
          'email can\'t be empty': 'L\'e-mail ne peut pas être vide',
          'Enter a valid email': 'Veuillez entrer un email valide',
          //password
          'Password': 'Mot de passe', //label
          'Enter your password': 'Entrer votre mot de passe', //hint
          'password can\'t be empty': 'Le mot de passe ne peut pas être vide', //err
          'Enter a valid password of at least 6 characters': 'Entrer un mot de passe valide d\'au moins 6 caractères', //err
          //forgot
          'Forgot Password?': 'Mot de passe oublié?',
          'Sign In': 'Connecter',
          'Guest': 'Invité',
          'you have no account?': 'Vous n\'avez pas de compte?',
          'Sign Up': 'S\'inscrire',
          //verif
          'Verification': 'Vérification',
          'Your email is not verified\nVerify now?': 'Votre email n\'est pas vérifié\nVérifiez maintenant?',
          'Verify': 'Vérifiez',
          'Please Verify': 'Veuillez vérifier',
          'Are you sure you want to delete this image': 'Êtes-vous sûr de vouloir supprimer cette image',
          'Verify your account': 'Vérifiez votre compte',
          'An email has been sent to': 'Un courriel a été envoyé à',
          'Send email reset link!': 'Envoyer le lien de réinitialisation',
          'Send': 'Envoyer',
          'Back': 'Retour',
          //
          'cancel': 'annuler',
          'delete': 'supprimer',
          //auth (signUp)//
          'Create account': 'Créer un compte',
          'name can\'t be empty': 'Le nom ne peut pas être vide', //err
          'Enter your name': 'Entrer votre nom',
          'Full Name': 'Nom et prénom',
          'already have an account': 'Vous avez déjà un compte',

          'Welcome': 'Bienvenue',
          'Loading': 'Chargement',
          'Please wait': 'Veuillez patienter',
          'Failed': 'Echec',
          'Success': 'Succès',
          'Save': 'Enregistrer',
        },
      };
}
