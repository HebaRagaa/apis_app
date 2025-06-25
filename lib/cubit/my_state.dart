part of 'my_cubit.dart';

@immutable
sealed class MyState {}

final class MyInitial extends MyState {}

//هاخد فهم ده من كيوبت الابلكيشن ريك و مورتي
 class GetAllUsers extends MyState {
  final List<UsersModel> allUsersList ;

  GetAllUsers(this.allUsersList);
 }
