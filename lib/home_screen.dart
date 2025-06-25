

  import 'package:apis_app/cubit/my_cubit.dart';
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
     BlocProvider.of<MyCubit>(context).emitGetUserDetails(7967954);

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
            BlocBuilder<MyCubit, MyState > (builder: (context, state ) {
              if (state is GetUserDetails ) {
                //هعمل فوق يوزر فاضي مش ليستا
                user = (state).userDetails ;
                return  Container(
                        height: 50,
                        color: Colors.amber,
                        child: Center(
                          child: Text( user.name.toString() ),
                        ),
                      );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }}
            ),

          ],
        ),
      );
    }
  }
