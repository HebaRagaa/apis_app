import 'package:apis_app/api_result.dart';
import 'package:apis_app/cubit/result_state.dart';
import 'package:apis_app/my_repo.dart';
import 'package:apis_app/network_exceptions.dart';
import 'package:apis_app/users_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


 class MyCubit extends Cubit<ResultState<List<UsersModel>>> {
  final MyRepo myRepo ;
  //الانشبل استيت اللي هى بتساوي ايدل
  MyCubit(this.myRepo) : super(const Idle());

  void emitGetAllUsers () async {
    // var data = await myRepo.getAllUsers();
    //عندي مشكله ف الوين
    // data.when(
    //   success: (allUsers) {
    //     emit(ResultState.success(allUsers));
    //   },
    //   failure: (networkExceptions) {
    //     emit(ResultState.error(networkExceptions));
    //   },
    // );
    var data = await myRepo.getAllUsers();
    data.when (success : (List<UsersModel> allUsers ) {
      emit(ResultState.success(allUsers));
    } , failure : (NetworkExceptions networkExceptions ) {
    emit(ResultState.error(networkExceptions));
    } );

    //دي بقى هسميها يوزرز ليست لان دلوقتي رجعالي الليست كلها
   // myRepo.getAllUsers().then((usersList) {
     // emit(GetAllUsers(usersList));
  //  } );
  }

  void emitGetUserDetails (userId) {
    //عشان لما باجي ا اميت اليوزر ديتلز لازم اباصي الاي دي بايدي
    myRepo.getUserById(userId).then((userDetails) {
      emit(GetUserDetails(userDetails));
    } );
  }

  void emitCreateNewUser (newUser) async {
    var result = await     myRepo.createNewUser(newUser);
    result.when(success : (UsersModel userData )  {
  emit(ResultState.success(userData));
    }, failure :  (NetworkExceptions networkExceptions ) {
  emit(ResultState.error(networkExceptions));
   });

    //عشان لما باجي ا اميت اليوزر ديتلز لازم اباصي النيو يوزر
  //  myRepo.createNewUser(newUser).then((newUser) {
   //   emit(CreateNewUser(newUser));
  //  } );
  }

  //ده تعريف الفانكشن معناه: الفانكشن بتاخد متغير من نوع String اسمه id
  void emitDeleteUser (String id) {
    //عشان لما باجي ا اميت الديليت يوزر لازم اباصي الباث اللي هو الاسترنج اي دي
    //هنا إنتي بتمرير قيمة المتغير id اللي جاي من فوق
    // كـ argument للفانكشن deleteUser
    myRepo.deleteUser( id).then((data) {
      emit(DeleteUser(data ));
    } );
  }


}
