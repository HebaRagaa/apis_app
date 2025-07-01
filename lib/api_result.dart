

  //طريقة فريزد بتقولك انا هجنريت لك كلاس فيه كود كتير بدل ماتكتبه بايدك وده بيبقى من خلال كتابة
//ويز واندر اسكور ودولار ساين وبعدين نفس اسم الكلاس واخليه اوف تايب تيي يعني يقبل اي حاجه ف اي حته

  import 'package:apis_app/network_exceptions.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

//وعشان تجنريت الفايل محتاج اكتب بارت اسم الفايل دوت فريزد دوت دارت وده مكتوب ف لايبراري فريزد
  part 'api_result.freezed.dart';

@freezed
   class ApiResult <T> with _$ApiResult <T> {
//هسمي اول كونستراكتور سكسيس من نوع تي يعني يقبل اي حاجه وخد بالك مش بعمل جنريت دلوقت
  const factory ApiResult.success (T data ) = Success <T> ;

 //ف حالة الفلير انا كهبه استخدمت شات يعمل كلاس نتورك اكسبشن
  const factory ApiResult.failure(NetworkExceptions  networkExceptions) =
  Failure<T> ;


  }