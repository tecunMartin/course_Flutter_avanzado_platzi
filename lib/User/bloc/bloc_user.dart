import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/User/Repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';


class UserBloc implements Bloc{
  
  final _auth_repository = AuthRepository();

  //Flujo de datos = Streams.
  //Stream de Firebase.

  Stream<FirebaseUser> streamFirabase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirabase;

  /* 
    Casos de uso:
    1) SignIn a la aplicacion Google.
   */

  Future<FirebaseUser> signIn(){
    return _auth_repository.signInFirebase();
  }
  
  
  @override
  void dispose() {
  }
}
