
  import 'package:apis_app/api_result.dart';
import 'package:apis_app/network_exceptions.dart';
import 'package:apis_app/users_model.dart';
import 'package:apis_app/web_services.dart';
import 'package:retrofit/dio.dart';
//الباكيدج بتاع فريزد بتوفر عليا كتابة كود كبير 

 //هاجي ف كل فانكشن من بتوع الريبو هغير الريترن اخليه جينريك كلاس حاجه تبع باكيد فريزد التجميد وفريزد انوتيشن
  //الالجينريك كلاس بيوفر اتنين كونستراكتور واحد للسكسيس والفيلير
class MyRepo {
final WebServices webServices ;

MyRepo(this.webServices) ;

Future<ApiResult<List<UsersModel>>> getAllUsers () async {
  //الشكل الجديد خليت الريتيرن بتاعي يبقى ايه بي اي ريزلت وتراي وكاتش
  try {
    //قولتله اويت اللي هيرجعلي من الويب سيرفزز خزنه باسم ريسبونس
    var response = await webServices.getAllUsers();
    //ف حالة السكسيس خد الريسبونس اشتغل بيه
     return ApiResult.success(response);

  } catch (error)  {
    //لو دخلت الدايو اكسبشن هتلاقيها بتحدد يعمل ايه ف كل ايرور
   //وهلاقي واحده منهم لو الايرور من نوع ريسبونس يستعمل هاندل ريسبونس اللي مكريتها فوق فيها الموديل
    return ApiResult.failure(NetworkExceptions.getDioException(error));
  }

  //الريسبونس ده ليست من اليوزرز راجع من الجيت وكاني هماب عليها اوبجيكت اوبجيكت بالكي والفاليو
  //وهنا بستقبل الكول اللي جالي من الجيت اللي ف الويب سيرفزز
  var response = await webServices.getAllUsers();
  //عايز امسك كل اوبجيكت من الريسبونس اللي جايلي احطه ف اوبجيكت انا هعمله
 //الماب شبه الفول لوب بتلف ع كل اوبجيكت جوه الليستا تحوله لاوبجيكت تاني
  //واليوزر اوبجيكت اللي جنب الماب هقول هاخد البيانات فروم جيسون تو جيسون خليها كي وفاليو
  //وبعدين حول الاوبجيكت يوزر ده لليستا وهكذا مع كل الاوبجيكتس
  // return response.map((userObject) =>
  //          UsersModel.fromJson(userObject.toJson()) ).toList();
  }//الريتروفيت بتعمل هى كل حاجه تحول من جيسون تو جيسون يعني كان ممكن اخر سطر اخليه ريترن ريسبونس بس
  //او اخلي اول سطر بتاع الفيوتشر والغي الاتنين التانيين واكتب ريترن واخد السطر الاول من اول اويت والويب والجيت 



Future<UsersModel> getUserById ( userId ) async {
  var response = await webServices.getUserById( userId );
  //استخدمت الكونستراكتور بتاع الفروم جيسون اللي هباصيله الاوبجيكت اللي راجعلي من الجيسون وحوله لاوبجيكت من دارت عادي كي وماب
  return UsersModel.fromJson(response.toJson()) ;
 }


 //هنا عملت الطريقه اللي كنت بقول عليها بتاع العادي والاختصار طالما مستعمله ريتروفيت
//او اخلي اول سطر بتاع الفيوتشر والغي الاتنين التانيين واكتب ريترن واخد السطر الاول من اول اويت والويب والجيت
Future<ApiResult<UsersModel>> createNewUser (UsersModel newUser ) async {
  try {
    var response = await webServices.createNewUser(
        newUser,
        'Bearer 79f27dbfed47155ce1068f03390aa69f71e4077274563a753d0c9e2fbfcba659');
    return ApiResult.success(response);
  }catch (error) {
    return ApiResult.failure(NetworkExceptions.getDioException(error));

  }

  //ولازم اعرفه نوع الاوث  ولو توكين اقول نوعه بيرل مثلا واكتبه اينعم ده مش امن بس دلوقتي فهم وكتابة كود
 //return await webServices.createNewUser(
     // newUser, 'Bearer 79f27dbfed47155ce1068f03390aa69f71e4077274563a753d0c9e2fbfcba659');

  }


  Future<HttpResponse> deleteUser (String id ) async {
    //ولازم اعرفه نوع الاوث  ولو توكين اقول نوعه بيرل مثلا واكتبه اينعم ده مش امن بس دلوقتي فهم وكتابة كود
    return await webServices.deleteUser(
        id , 'Bearer 79f27dbfed47155ce1068f03390aa69f71e4077274563a753d0c9e2fbfcba659');

  }

  //ودلوقتي هاخد من الريبو للكيوبت واعمل البلوك بيلدر واقرا الداتا
}
