import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:platzi_tripss_app/Place/Repository/firebase_storage_api.dart';


class FirabaseStorageRepository{

  final _firebaseStorageAPI = FirebaseStorageAPI();

  Future<StorageUploadTask> uploadFile(String path, File image) => _firebaseStorageAPI.uploadFile(path, image);

}





