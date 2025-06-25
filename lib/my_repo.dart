
  import 'package:apis_app/users_model.dart';
import 'package:apis_app/web_services.dart';

class MyRepo {
final WebServices webServices ;

MyRepo(this.webServices) ;

Future<List<UsersModel>> getAllUsers () async {
  //الريسبونس ده ليست من اليوزرز راجع من الجيت وكاني هماب عليها اوبجيكت اوبجيكت بالكي والفاليو
  //وهنا بستقبل الكول اللي جالي من الجيت اللي ف الويب سيرفزز
  var response = await webServices.getAllUsers();
  //عايز امسك كل اوبجيكت من الريسبونس اللي جايلي احطه ف اوبجيكت انا هعمله
 //الماب شبه الفول لوب بتلف ع كل اوبجيكت جوه الليستا تحوله لاوبجيكت تاني
  //واليوزر اوبجيكت اللي جنب الماب هقول هاخد البيانات فروم جيسون تو جيسون خليها كي وفاليو
  //وبعدين حول الاوبجيكت يوزر ده لليستا وهكذا مع كل الاوبجيكتس
  return response.map((userObject) =>
           UsersModel.fromJson(userObject.toJson()) ).toList();
 }
 //ودلوقتي هاخد من الريبو للكيوبت واعمل البلوك بيلدر واقرا الداتا
  }