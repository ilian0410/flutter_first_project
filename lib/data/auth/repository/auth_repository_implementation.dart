import 'package:dartz/dartz.dart';
import 'package:final_flutter_project/data/auth/models/user_creation_req.dart';
import 'package:final_flutter_project/data/auth/source/auth_firebase_service.dart';
import 'package:final_flutter_project/domain/auth/repository/auth.dart';
import 'package:final_flutter_project/presentation/service_locator.dart';

class AuthRepositoryImplementation implements AuthRepository {
  @override
 
    Future<Either> signUp(UserCreationRequest user) async {
     return sl<AuthFirebaseService>().signUp(user);
  }
  

  
}
