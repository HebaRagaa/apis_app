part of 'my_cubit.dart';

@immutable
sealed class MyState {}

final class MyInitial extends MyState {}

//هاخد فهم ده من كيوبت الابلكيشن ريك و مورتي
 class GetAllUsers extends MyState {
  final List<UsersModel> allUsersList ;

  GetAllUsers(this.allUsersList);
 }

class GetUserDetails extends MyState {
 final UsersModel userDetails ;

 GetUserDetails(this.userDetails);
}

class CreateNewUser extends MyState {
 final UsersModel newUser ;

 CreateNewUser(this.newUser);
}


