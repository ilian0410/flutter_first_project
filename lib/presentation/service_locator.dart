import 'package:final_flutter_project/data/auth/repository/auth_repository_implementation.dart';
import 'package:final_flutter_project/data/auth/source/auth_firebase_service.dart';
import 'package:final_flutter_project/domain/auth/repository/auth.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
// Services
sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImplementation());


// Repositories
sl.registerSingleton<AuthRepository>(AuthRepositoryImplementation());


// Use cases
  
}