import 'package:appwrite/appwrite.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthAPI{
Future<Either<String, Account>> signUP({
  required String email,
  required String password,
});
}

class AuthAPI implements IAuthAPI {
  @override
  Future<Either<String, Account>> signUP({required String email, required String password}) {
    // TODO: implement signUP
    throw UnimplementedError();
  }
 
}