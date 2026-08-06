
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:final_flutter_project/data/auth/models/user_creation_req.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(UserCreationRequest user);
}

class AuthFirebaseServiceImplementation implements AuthFirebaseService {
  @override
  Future<Either> signUp(UserCreationRequest user) async {
    try {

var returnedData = await FirebaseAuth.instance.createUserWithEmailAndPassword(
         
          email: user.email!, 
          password: user.password!,
          );

await FirebaseFirestore.instance.collection('users').doc(returnedData.user?.uid).set({
        'firstName': user.firstName,
        'lastName': user.lastName,
        'email': user.email,
        'gender': user.gender,
        'age': user.age,
    });
      return const Right('Sign up was successful');
    } on FirebaseAuthException catch (e) {
String message = '';
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = e.message ?? 'An error occurred during sign up';
      }



      return Left(message);
    }
  }
}
