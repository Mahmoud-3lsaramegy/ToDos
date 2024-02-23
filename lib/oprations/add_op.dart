import 'package:app_todo/const/Auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Exception add({String title = ""}) {
  if (title.isEmpty) {
    return Exception();
  } else {
    CollectionReference todos = FirebaseFirestore.instance.collection("TODOs");
    todos.add({"title": title, /*"id": userid*/});
    return Exception("Done");
  }
}
