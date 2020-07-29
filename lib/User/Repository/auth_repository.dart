import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_tripss_app/User/Repository/firebase_auth_api.dart';

class AuthRepository{

  final _firebaseAuthAPI = FirebaseAuthAPI();
  Future<FirebaseUser> signInFirebase()=> _firebaseAuthAPI.signIn();
  singOut() =>_firebaseAuthAPI.signOut();
}