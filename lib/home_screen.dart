

  import 'package:apis_app/cubit/my_cubit.dart';
import 'package:apis_app/cubit/result_state.dart';
import 'package:apis_app/network_exceptions.dart';
import 'package:apis_app/users_model.dart';
import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';

  class HomeScreen extends StatefulWidget {
    const HomeScreen({super.key});

    @override
    State<HomeScreen> createState() => _HomeScreenState();
  }

  class _HomeScreenState extends State<HomeScreen> {
    //هعمل ليستا فاضيه وانزل تحت اشغلها
    //وده بالبلوك بيلدر مشروح ف الريك ومورتي كورس الكيوبت
    List<UsersModel> usersLst = [] ;
    //ده لليوزر ديتلز
  UsersModel user = UsersModel() ;

    @override
  void initState() {
    super.initState();
    //BlocProvider.of<MyCubit>(context).emitGetAllUsers();
    //المفروض انك تعمل ايه ربي اي كول ترجعلك ليستا من اليوزرز تاخد واحد منه تباصي الاي دي بتاعه
    //تعمل فاليوبل تخزنه فيه وتباصيه
    //BlocProvider.of<MyCubit>(context).emitGetUserDetails(7967954);

      //ودلوقتي هنعمل بتاع البوست اللي هى كرييت نيو يوزر
      // BlocProvider.of<MyCubit>(context).emitCreateNewUser( UsersModel(
      //   name: 'Flutter Queen' ,
      //   //لو عملت رن مره مثلا بالايميل وجيت اعمل مره تاني بالنيم هيظهر ايرور
      //   //لاني لازم اغير ف الايميل عشان ابقى كريت نيو يوزر
      //   email: 'flutterQueen@gmail.com' ,
      //   gender: 'female' ,
      //   status: 'active' ,
      // ));

      //وهنا هعمل البلوك بتاع الديليت
      BlocProvider.of<MyCubit>(context).emitDeleteUser('7967954');


    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Home Screen '),
        ),
        body: Column(
          children: [
            //دي بتاع الجيت لما ارجع ليستا كامله من اليوزرز
            // BlocBuilder<MyCubit, MyState > (builder: (context, state ) {
            //   if (state is GetAllUsers ) {
            //     usersLst = (state).allUsersList ;
            //     return ListView.builder(
            //       shrinkWrap: true,
            //         padding: EdgeInsets.all(8),
            //         itemCount: usersLst.length,
            //         itemBuilder: (BuildContext context, int index )  {
            //           return Container(
            //             height: 50,
            //             color: Colors.amber,
            //             child: Center(
            //               //انا عايز ف حالة نجاح الايه بي ايي يعرضلي ليستا من اسماء الناس اللي رجعتلي الداتا بتاعتهم
            //               //child: Text( usersLst[index].name.toString() ),
            //               child: Text( usersLst[index].email.toString() ),
            //
            //             ),
            //           );
            //         });
            //   } else {
            //     return Center(
            //       child: CircularProgressIndicator(),
            //     );
            //   }
            // }
            // ),

            //ودي بقو بتاع الباث واليوزر ديتلز لاوبجيكت واحد من الليست نفس الحاجه بشوية تعديلات
            // BlocBuilder<MyCubit, MyState > (builder: (context, state ) {
            //   if (state is GetUserDetails ) {
            //     //هعمل فوق يوزر فاضي مش ليستا
            //     user = (state).userDetails ;
            //     return  Container(
            //             height: 50,
            //             color: Colors.amber,
            //             child: Center(
            //               child: Text( user.name.toString() ),
            //             ),
            //           );
            //   } else {
            //     return Center(
            //       child: CircularProgressIndicator(),
            //     );
            //   }}
            // ),

            //وده للبوست ف الكرييت نيو يوزر
           //لو عملت رن مره مثلا بالايميل وجيت اعمل مره تاني بالنيم هيظهر ايرور
            //لاني لازم اغير ف الايميل عشان ابقى كريت نيو يوزر
            BlocBuilder<MyCubit, ResultState<List<UsersModel>> >
              (builder: (context, ResultState<List<UsersModel>> state ) {
                return state.when (idle : () {
           return const Center(child: CircularProgressIndicator(),) ;
      } , loading : () {
      return const Center(child: CircularProgressIndicator(),) ;
      } , success : (UsersModel userData) {
           return Container(
           height: 50, color: Colors.grey,
      child: Center( child: Text(userData.name.toString(),
      style: TextStyle(color: Colors.white),),
      ),
           );
                } , error : (NetworkExceptions error ) {
             return Center(child: Text(NetworkExceptions.getErrorMessage(error))
      ,) ;
      }

      )

              // if (state is CreateNewUser ) {
              //   //هعمل فوق يوزر فاضي مش ليستا
              //   user = (state).newUser ;
              //   return  Container(
              //     height: 50,
              //     color: Colors.amber,
              //     child: Center(
              //       child: Text( user.email.toString() ),
              //     ),
              //   );
              // } else {
              //   return Center(
              //     child: CircularProgressIndicator(),
              //   );
              // }}
            ),
          //
          // //ده للديليت يوزر
          //   //اه ولو عملت رن تاني مش هيظهر حاجه واحتمال هيبقى ايرور لان اليوزر اللي كاتبه اتميح اصلا
          //   BlocBuilder<MyCubit, MyState > (builder: (context, state ) {
          //     if (state is DeleteUser ) {
          //       //همسح السطر ده لاني مش هخزن حاجه
          //      // user = (state).newUser ;
          //       return  Container(
          //         height: 50,
          //         color: Colors.amber,
          //         child: Center(
          //           child: Text((state ).data.toString() ),
          //         ),
          //       );
          //     } else {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }}
          //   ),
          //


          ],
        ),
      );
    }
  }
