import 'package:apis_app/my_repo.dart';
import 'package:apis_app/users_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo ;
  MyCubit(this.myRepo) : super(MyInitial());

  void emitGetAllUsers () {
    //دي بقى هسميها يوزرز ليست لان دلوقتي رجعالي الليست كلها
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));
    } );
  }

  void emitGetUserDetails (userId) {
    //عشان لما باجي ا اميت اليوزر ديتلز لازم اباصي الاي دي بايدي
    myRepo.getUserById(userId).then((userDetails) {
      emit(GetUserDetails(userDetails));
    } );
  }

  void emitCreateNewUser (newUser) {
    //عشان لما باجي ا اميت اليوزر ديتلز لازم اباصي النيو يوزر
    myRepo.createNewUser(newUser).then((newUser) {
      emit(CreateNewUser(newUser));
    } );
  }


}
