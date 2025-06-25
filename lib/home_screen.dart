

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

    @override
  void initState() {
    super.initState();
    BlocProvider.of<MyCubit>(context).emitGetAllUsers();
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
            BlocBuilder<MyCubit, MyState > (builder: (context, state ) {
              if (state is GetAllUsers ) {
                usersLst = (state).allUsersList ;
                return ListView.builder(
                  shrinkWrap: true,
                    padding: EdgeInsets.all(8),
                    itemCount: usersLst.length,
                    itemBuilder: (BuildContext context, int index )  {
                      return Container(
                        height: 50,
                        color: Colors.amber,
                        child: Center(
                          //انا عايز ف حالة نجاح الايه بي ايي يعرضلي ليستا من اسماء الناس اللي رجعتلي الداتا بتاعتهم
                          //child: Text( usersLst[index].name.toString() ),
                          child: Text( usersLst[index].email.toString() ),

                        ),
                      );
                    });
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }
            )
          ],
        ),
      );
    }
  }
