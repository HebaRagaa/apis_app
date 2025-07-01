


 import 'package:json_annotation/json_annotation.dart';

 part 'error_model.g.dart';

@JsonSerializable()
 // هعمله امبورت ف النتورك اكسبشنز وده موديل للايرور زي ماعملنا الاساسي للسكسيس
 //وطبعا زي ماقلنا قبل كده دا مش قران دا ممكن يتغير معايا ف اي وقت ع حسب الريسبونس اللي راجع من بوست مان
class ErrorModel {
  String? field;
  String? message ;

  ErrorModel(this.field, this.message);

  factory ErrorModel.fromJson(Map<String, dynamic> json) => _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);



}

