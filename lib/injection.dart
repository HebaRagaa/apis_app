
import 'package:apis_app/cubit/my_cubit.dart';
import 'package:apis_app/my_repo.dart';
import 'package:apis_app/web_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

//getit هى service locator زي خزان بنسجل فيه اوبجيكتس او سيرفززس ونطلبها وقت مانحتاجها
 final getIt = GetIt.instance;

// initGetIt() دي فانكشن انت عرفتيها علشان تجهزي كل الخدمات والأوبجيكتس اللي هيشتغل بيهم الابلكيشنـ
 void initGetIt () {
  //بتريجست اكتر من سنجلتون تشوفها ف الباكيدج ولكن هختار الليزي عشان يشتغل وقت ما احتاجه بس
  //السطر ده ماجبتوش من عندي دا من الباكيدج ولكن بحط فيه اللي انا عايزه الكيوبت وبكتب جيت عشان يعرف انا عايز ايه
  getIt.registerLazySingleton<MyCubit>(() => MyCubit(getIt()));
  //الريجيستر ليزي بتقوله لما اول مره حد يطلب ماي كيوبت انشئ انستانس منه باستخدام ماي كيوبت جيت ات
  // الجيت ات جوه الكونستراكتور معناه ابعت للكيوبت الحاجه اللي محتاجها من جيت ات برضه ونفس الكلام ف الريبو والسيرفز
  getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));
  //لو رحت ف الويب سيرفزز هلاقيه بياخد ديوو والمفروض اخد اوبجيكت من ديو
  //بس انا هعمل فانكشن اسمها كريت اند سيت اب ديوو
  getIt.registerLazySingleton<WebServices>(() =>
      WebServices(createAndSetupDio()));
  //يعني انشئ ويب سيرفز وابعتله ديوو اللي هيتجهز عن طريق كرييت اند سيت اب ديو
 }

 Dio createAndSetupDio () {
//هنا انشئ اوبجيكت من ديوو
  Dio dio = Dio() ;

  //هظبط اعدادات الديو
  dio
  //أقصى وقت مسموح للمحاولة إنه يتصل بالسيرفر.
  ..options.connectTimeout = const Duration(seconds: 1 )
   //أقصى وقت مسموح لانتظار الداتا من السيرفر.
  ..options.receiveTimeout = const Duration(seconds: 10 );

  //الانترسبتور هو زي مراقب بيتفرج ع الريكويست والريسبونس ويسجل او يطبع ف اللوج حاجات معينه
  dio.interceptors.add(LogInterceptor(
   //هى دي الحاجات اللي بقرر يعرضها او لا
  responseBody: true,
  responseHeader: false,
  error: true,
  request: true,
  requestBody: true,
  requestHeader: false,
  ));
 return dio;

 } // النتيجه لما اي كلاس يحتاج جيت ات , الويب سيرفز هيديله نسخه مجهزه فيها ديوو

// فكرة الانجيكشن انك بدل ما الكلاس يعمل نيو بنفسه لا هو يستقبل الحاجه اللي محتاجها من بره بخلي الجيت يجهزها ويبعتها جاهزه