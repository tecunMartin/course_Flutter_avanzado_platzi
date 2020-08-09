import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_tripss_app/Place/model/place.dart';
import 'package:platzi_tripss_app/User/Repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_tripss_app/User/Repository/cloud_firestore_repository.dart';
import 'package:platzi_tripss_app/User/model/user.dart';


class UserBloc implements Bloc{
  
  final _auth_repository = AuthRepository();

  //Flujo de datos = Streams.
  //Stream de Firebase.
  //Stream controller

  Stream<FirebaseUser> streamFirabase = FirebaseAuth.instance.onAuthStateChanged;
  Stream<FirebaseUser> get authStatus => streamFirabase;

  /* 
    Casos de uso:
    1) SignIn a la aplicacion Google.
    2) SignOut a la aplicacion de google.
   */

  Future<FirebaseUser> signIn()=>_auth_repository.signInFirebase();

  //2. Registrar usuario en base de datos.
  final _cloudFirestoreRepository = CloudFirestoreRepository();
  void updateUserDatastore(User user)=> _cloudFirestoreRepository.updateUserDataFirestore(user);
  Future<void> updatePlaceData(Place place)=> _cloudFirestoreRepository.updatePlaceData(place);


  //3. Cerrar sesion.
  signOut(){
    _auth_repository.singOut();
  }


  @override
  void dispose() {
  }
}
