import 'package:dartz/dartz.dart';
import 'package:final_flutter_project/data/auth/models/user_creation_req.dart';

abstract class AuthRepository {
  Future<Either> signUp(UserCreationRequest userCreationReq);
}
