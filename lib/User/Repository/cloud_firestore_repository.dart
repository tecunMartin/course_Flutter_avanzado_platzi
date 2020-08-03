import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_tripss_app/User/Repository/cloud_fireStore_api.dart';
import 'package:platzi_tripss_app/User/model/user.dart';

class CloudFirestoreRepository{

  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserDataFirestore(User user)=> _cloudFirestoreAPI.updateUserData(user);

}