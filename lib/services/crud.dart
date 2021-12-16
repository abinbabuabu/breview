import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:breview/models/Create_Blog.dart';

class CrudMethods {
  getData(collection) async {
    return FirebaseFirestore.instance.collection(collection).snapshots();
  }

  static void saveBlogData(File file, BlogDetails blogDetails) async {
    Reference reference = FirebaseStorage.instance
        .ref()
        .child("blogImg")
        .child(blogDetails.id + ".jpg");
    UploadTask uploadTask;
    uploadTask = reference.putData(await file.readAsBytes());
    String url = await reference.getDownloadURL();
    blogDetails.blogImageUrl = url;
    await uploadTask.whenComplete(() => FirebaseFirestore.instance
        .collection("blogs")
        .add(blogDetails.toMap()));
  }
}
