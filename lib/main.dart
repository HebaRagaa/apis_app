import 'package:apis_app/cubit/my_cubit.dart';
import 'package:apis_app/home_screen.dart';
import 'package:apis_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 void main() {
   //حطينا الانيتجيت ف المين أننا محتاجين قبل ما الأبلكيشن يبدأ — نكون جهزنا كل السيرفزز اللي هيحالجها
  initGetIt () ; // ← بنسجل كل حاجة محتاجينها
  runApp(const MyApp()); // ← بعدين نشغل الأبلكيشن
 //لو ما عملتش كده وجيت تستخدم حاجة من GetIt قبل ما تسجلها → هيديك error
 }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple),
      ),
      home:  BlocProvider(
        create: (context) => getIt<MyCubit> (),
         child: const HomeScreen(),
      )
    );
  }
}

 //وكده ف الابلكيشن ده عملنا جيت وجيت بالباث وعملنا بوست والبوست كان فيه بدي واوث وبيريل توكين
