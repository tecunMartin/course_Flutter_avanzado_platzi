import 'package:platzi_tripss_app/Place/model/place.dart';
import 'package:platzi_tripss_app/User/Repository/cloud_fireStore_api.dart';
import 'package:platzi_tripss_app/User/model/user.dart';

class CloudFirestoreRepository{
  
  final _cloudFirestoreAPI = CloudFirestoreAPI();
  void updateUserDataFirestore(User user)=> _cloudFirestoreAPI.updateUserData(user);
  Future<void> updatePlaceData(Place place)=> _cloudFirestoreAPI.updatePlaceData(place);

}