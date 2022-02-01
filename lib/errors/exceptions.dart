import 'exceptions.enum.wings.dart';

class Exceptions implements Exception {
  Exceptions();

  factory Exceptions.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 204:
        return NoContentException();
      case 400:
        return ConflictException();

      case 401:
        return UnauthenticatedException();
      case 404:
        return NotFoundException();
      case 406:
        return InvalidException();
      case 410:
        return ExpireException();
      case 434:
        return UserExistsException();
      case 439:
        return BlockedException();
      case 500:
        return ServerException();

      default:
        return UnexpectedException();
    }
  }

  factory Exceptions.fromEnumeration(ExceptionTypes types) {
    switch (types) {
      case ExceptionTypes.cache:
        return CacheException();
      case ExceptionTypes.process:
        return ProcessException();
      case ExceptionTypes.connection:
        return ConnectionException();
      case ExceptionTypes.timeout:
        return TimeoutException();
      case ExceptionTypes.empty:
        return EmptyException();
      case ExceptionTypes.unexpected:
        return UnexpectedException();
    }
  }
}

class ServerException extends Exceptions {}

class CacheException extends Exceptions {}

class EmptyException extends Exceptions {}

class NoContentException extends Exceptions {}

class InvalidException extends Exceptions {}

class NotFoundException extends Exceptions {}

class ExpireException extends Exceptions {}

class UserExistsException extends Exceptions {}

class PasswordException extends Exceptions {}

class UnexpectedException extends Exceptions {}

class UnauthenticatedException extends Exceptions {}

class BlockedException extends Exceptions {}

class ConnectionException extends Exceptions {}

class ProcessException extends Exceptions {}

class TimeoutException extends Exceptions {}

class ConflictException extends Exceptions {}

class ReceiveException implements Exception {}

class UnknownException implements Exception {}

class CustomException implements Exception {
  final String message;

  CustomException({required this.message});
}

class ValidationException implements Exception {
  final String message;

  ValidationException({required this.message});
}