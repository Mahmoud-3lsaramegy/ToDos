import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void add({String title = ""}) {
  CollectionReference todos = FirebaseFirestore.instance.collection("TODOs");
  todos.add({"title": title,"id":FirebaseAuth.instance.currentUser!.uid});
}
