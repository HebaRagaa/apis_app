

// خد بالك ده ممكن اغير واعدل فيه ع حسب البروجيكت يعني البيز اللي فوق ثابته لكن بغير ف التفاصيل اللي جوه
// يعني ده الهيكل والطريقه تمام لكن ممكن مثلا الداتا بيز ترجع ب استيتس كود غير اللي انا كاتبه
//dart run build_runner build

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exceptions.freezed.dart';

//@freezed عشان تولد الكلاسات بشكل تلقائي.
@freezed
//ف قراءة الكومنت ابدا من الشمال لليمين
//Freezed بيتعامل مع class مش abstract class عشان يقدر يولد extension methods زي when و map
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest() = UnauthorisedRequest;

  const factory NetworkExceptions.badRequest() = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.receiveTimeout() = ReceiveTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.connectionTimeout() = ConnectionTimeout;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.invalidStatusCode(
      int statusCode) = InvalidStatusCode;

  const factory NetworkExceptions.generalError() = GeneralError;

  // handleResponse → تأخذ الريسبونس وتختار الاستيت حسب الكود
  static NetworkExceptions handleResponse(Response response) {
    switch (response.statusCode) {
      case 400:
        return const NetworkExceptions.badRequest();
      case 401:
      case 403:
        return const NetworkExceptions.unauthorisedRequest();
      case 404:
        return NetworkExceptions.notFound("Not found");
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        return NetworkExceptions.invalidStatusCode(response.statusCode ?? 0);
    }
  }

  // getDioException → تتعامل مع استثناءات Dio.
  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              return const NetworkExceptions.requestCancelled();
            case DioExceptionType.connectionTimeout:
              return const NetworkExceptions.connectionTimeout();
            case DioExceptionType.sendTimeout:
              return const NetworkExceptions.sendTimeout();
            case DioExceptionType.receiveTimeout:
              return const NetworkExceptions.receiveTimeout();
            case DioExceptionType.badResponse:
              return handleResponse(error.response!);
            case DioExceptionType.unknown:
              return const NetworkExceptions.noInternetConnection();
            default:
              return const NetworkExceptions.unexpectedError();
          }
        } else {
          return const NetworkExceptions.unexpectedError();
        }
      } on FormatException catch (_) {
        return const NetworkExceptions.defaultError("Unexpected format error");
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      return const NetworkExceptions.unexpectedError();
    }
  }

  // getErrorMessage → تعطيك رسالة جاهزة لليوزر.
  //تزود _ زي ما lint عايز
  static String getErrorMessage(NetworkExceptions error) {
    switch (error.runtimeType) {
      case RequestCancelled _:
        return "Request was cancelled";

      case UnauthorisedRequest _:
        return "Unauthorized request";

      case BadRequest _:
        return "Bad request";

      case NotFound _:
        final e = error as NotFound;
        return "Item not found: ${e.reason}";

      case InternalServerError _:
        return "Internal server error";

      case ServiceUnavailable _:
        return "Service unavailable";

      case ReceiveTimeout _:
        return "Receive timeout";

      case SendTimeout _:
        return "Send timeout";

      case ConnectionTimeout _:
        return "Connection timeout";

      case NoInternetConnection _:
        return "No internet connection";

      case UnexpectedError _:
        return "An unexpected error occurred";

      case DefaultError _:
        final e = error as DefaultError;
        return e.error;

      case InvalidStatusCode _:
        final e = error as InvalidStatusCode;
        return "Invalid status code: ${e.statusCode}";

      case GeneralError _:
        return "General error";

      default:
        return "Unexpected error";
    }
  }


//defaultError تقدر تمرر فيها أي مسج انت تحب تعرضه.
//invalidStatusCode مع statusCode ?? 0 احتياطي لو null.

}
