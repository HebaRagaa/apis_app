// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NetworkExceptions {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NetworkExceptions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions()';
}


}

/// @nodoc
class $NetworkExceptionsCopyWith<$Res>  {
$NetworkExceptionsCopyWith(NetworkExceptions _, $Res Function(NetworkExceptions) __);
}


/// @nodoc


class RequestCancelled implements NetworkExceptions {
  const RequestCancelled();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestCancelled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.requestCancelled()';
}


}




/// @nodoc


class UnauthorisedRequest implements NetworkExceptions {
  const UnauthorisedRequest();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthorisedRequest);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.unauthorisedRequest()';
}


}




/// @nodoc


class BadRequest implements NetworkExceptions {
  const BadRequest();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BadRequest);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.badRequest()';
}


}




/// @nodoc


class NotFound implements NetworkExceptions {
  const NotFound(this.reason);
  

 final  String reason;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotFoundCopyWith<NotFound> get copyWith => _$NotFoundCopyWithImpl<NotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotFound&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode => Object.hash(runtimeType,reason);

@override
String toString() {
  return 'NetworkExceptions.notFound(reason: $reason)';
}


}

/// @nodoc
abstract mixin class $NotFoundCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) _then) = _$NotFoundCopyWithImpl;
@useResult
$Res call({
 String reason
});




}
/// @nodoc
class _$NotFoundCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(this._self, this._then);

  final NotFound _self;
  final $Res Function(NotFound) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reason = null,}) {
  return _then(NotFound(
null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InternalServerError implements NetworkExceptions {
  const InternalServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InternalServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.internalServerError()';
}


}




/// @nodoc


class ServiceUnavailable implements NetworkExceptions {
  const ServiceUnavailable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceUnavailable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.serviceUnavailable()';
}


}




/// @nodoc


class ReceiveTimeout implements NetworkExceptions {
  const ReceiveTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReceiveTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.receiveTimeout()';
}


}




/// @nodoc


class SendTimeout implements NetworkExceptions {
  const SendTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.sendTimeout()';
}


}




/// @nodoc


class ConnectionTimeout implements NetworkExceptions {
  const ConnectionTimeout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectionTimeout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.connectionTimeout()';
}


}




/// @nodoc


class NoInternetConnection implements NetworkExceptions {
  const NoInternetConnection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetConnection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.noInternetConnection()';
}


}




/// @nodoc


class UnexpectedError implements NetworkExceptions {
  const UnexpectedError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.unexpectedError()';
}


}




/// @nodoc


class DefaultError implements NetworkExceptions {
  const DefaultError(this.error);
  

 final  String error;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultErrorCopyWith<DefaultError> get copyWith => _$DefaultErrorCopyWithImpl<DefaultError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'NetworkExceptions.defaultError(error: $error)';
}


}

/// @nodoc
abstract mixin class $DefaultErrorCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $DefaultErrorCopyWith(DefaultError value, $Res Function(DefaultError) _then) = _$DefaultErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(this._self, this._then);

  final DefaultError _self;
  final $Res Function(DefaultError) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(DefaultError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InvalidStatusCode implements NetworkExceptions {
  const InvalidStatusCode(this.statusCode);
  

 final  int statusCode;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvalidStatusCodeCopyWith<InvalidStatusCode> get copyWith => _$InvalidStatusCodeCopyWithImpl<InvalidStatusCode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidStatusCode&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,statusCode);

@override
String toString() {
  return 'NetworkExceptions.invalidStatusCode(statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $InvalidStatusCodeCopyWith<$Res> implements $NetworkExceptionsCopyWith<$Res> {
  factory $InvalidStatusCodeCopyWith(InvalidStatusCode value, $Res Function(InvalidStatusCode) _then) = _$InvalidStatusCodeCopyWithImpl;
@useResult
$Res call({
 int statusCode
});




}
/// @nodoc
class _$InvalidStatusCodeCopyWithImpl<$Res>
    implements $InvalidStatusCodeCopyWith<$Res> {
  _$InvalidStatusCodeCopyWithImpl(this._self, this._then);

  final InvalidStatusCode _self;
  final $Res Function(InvalidStatusCode) _then;

/// Create a copy of NetworkExceptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? statusCode = null,}) {
  return _then(InvalidStatusCode(
null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GeneralError implements NetworkExceptions {
  const GeneralError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NetworkExceptions.generalError()';
}


}




// dart format on
