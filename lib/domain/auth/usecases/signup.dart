import 'package:dartz/dartz.dart';
import 'package:final_flutter_project/core/usecase/usecase.dart';
import 'package:final_flutter_project/data/auth/models/user_creation_req.dart';
import 'package:final_flutter_project/domain/auth/repository/auth.dart';
import 'package:final_flutter_project/presentation/service_locator.dart';

class SignupUseCase implements  Usecase<Either, UserCreationRequest>{

  @override
  Future<Either<dynamic, dynamic>> call({UserCreationRequest? params}) async {
    return await sl<AuthRepository>().signUp(params!);
  }

}


