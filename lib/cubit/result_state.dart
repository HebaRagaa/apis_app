

import 'package:apis_app/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

 part 'result_state.freezed.dart';
//غيرت ف الاستيت كده بقى جينريك اكتر ومش محتاج اعمل جوات استيتس كتير
 //ممكن ازود فيها واغسير زي مانا عايز ومش شرط استخدم ده كريزلت استيت واحده ف البروجيكت كله
//ممكن اعمل اكتر من ريزلت استيت لكل موديول مش كل فيتشر
//يعني ممكن تلاته استيت كلاسز ف الاوبجيكت كله استخدمه وكل حسب البروجيكت والحاجه
@freezed
 class ResultState <T> with _$ResultState <T> {

 const factory ResultState.idle () = Idle <T> ;
 const factory ResultState.loading () = Loading <T> ;
 const factory ResultState.success () = Success <T> ;
 const factory ResultState.error (NetworkExceptions networkExceptions) = Error <T> ;

}



// part of 'my_cubit.dart';
//
// @immutable
// sealed class MyState {}
//
// final class MyInitial extends MyState {}
//
// //هاخد فهم ده من كيوبت الابلكيشن ريك و مورتي
//  class GetAllUsers extends MyState {
//   final List<UsersModel> allUsersList ;
//
//   GetAllUsers(this.allUsersList);
//  }
//
// class GetUserDetails extends MyState {
//  final UsersModel userDetails ;
//
//  GetUserDetails(this.userDetails);
// }
//
//  class CreateNewUser extends MyState {
//  final UsersModel newUser ;
//
//  CreateNewUser(this.newUser);
// }
//
//
// class DeleteUser extends MyState {
//  //هسمي اللي راجعلي داتا او اي حاجه لان ده ديليت
//  final dynamic data ;
//
//  DeleteUser(this.data);
// }
//
//
