import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_tripss_app/Place/model/place.dart';
import 'package:platzi_tripss_app/User/model/user.dart';
import 'package:platzi_tripss_app/User/ui/widgets/profile_place.dart';

class CloudFirestoreAPI{

  final String USERS = "users";
  final String PLACES = "places";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void updateUserData(User user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
      "uid"             :user.uid,
      "name"            :user.name,
      "email"           :user.email,
      "photoURL"        :user.photoURL,
      "myplace"         :user.myPlaces,
      "myFavoritePlaces": user.myFavoritePlaces,
      "lastSignIn":DateTime.now(),
    },merge: true);
  }

  Future<void> updatePlaceData(Place place) async{
    CollectionReference refPlaces = _db.collection(PLACES);

    _auth.currentUser().then((FirebaseUser user) => {
      refPlaces.add(
        {
          "name"       :place.name,
          "description":place.description,
          "urlImage"   :place.urlImage,
          "likes"      :place.likes,
          "userOwner"  :_db.document("${USERS}/${user.uid}"),//De tipo referencia.
        }//references,
      ).then((DocumentReference dr) {
        dr.get().then((DocumentSnapshot snapshot){
          /* snapshot.documentID;//ID place REFERENCIA ARRAY */
          DocumentReference refUsers = _db.collection(USERS).document(user.uid);
          refUsers.updateData({
            "myPlaces"  : FieldValue.arrayUnion([_db.document("${PLACES}/${snapshot.documentID}"),]),
          });
        });
      }),
    });
  }

  List<ProfilePlace> buildPlaces(List<DocumentSnapshot> placesListSnapshot){
    List<ProfilePlace> profilePlaces = List<ProfilePlace>();
    placesListSnapshot.forEach((p) { 
      profilePlaces.add(ProfilePlace(place:Place(
        description: p.data["description"],
        name: p.data["name"] ,
        urlImage:p.data["urlImage"] ,
        likes: p.data["likes"]
      )));
    });
    return profilePlaces;
  }
}