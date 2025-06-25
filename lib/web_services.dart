

import 'package:apis_app/users_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

 //دا لازم اكتبه برضو عشان يجنريت وبيبقى بنفس اسم الفايل
part 'web_services.g.dart';

//اخدت التلات سطور دول من باكيدج ريترةفيت وبغير البيز يو ار ال واسم الكلاس
 @RestApi(baseUrl: 'https://gorest.co.in/public/v2/')

abstract class WebServices {

 factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;

  @GET('users')   //وهنا بكتب الباث اللي هو الايندبوينت اللي قلنا بعد البيز يو ار ال
 //هعمل ليست اوفريوزرز لانها ليست ف البوست مان وشايل اوبجيكتس اسمها يوزرز
 //ولو كان راجع اوبجيكت واحد مش ليستا بكتب اسمها يوزرز بس
 Future<List<UsersModel>> getAllUsers () ;

}
//كده الويب سيرفزز ده هيجيب الداتا يباصيها للريبوزتري الريبو والريبو يديها للكيوبت والكيوبت يديها لليو اي
