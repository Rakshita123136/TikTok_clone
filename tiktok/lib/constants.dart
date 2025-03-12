import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tiktok/Controller/auth_controller.dart';
import 'package:tiktok/view/screens/video_screen.dart';
import 'package:tiktok/view/screens/search_screen.dart';
import 'package:tiktok/view/screens/add_video_screen.dart';

import 'package:tiktok/view/screens/profile_screen.dart';

// PAGES LIST - ACTUAL SCREENS
const pages = [
  ('VideoScreen'), // Home screen with videos
  ('SearchScreen'), // Search screen
  ('Add video'), // Upload video screen
  ('Message screen'), // Messages screen
  ('ProfileScreen'), // User profile screen
];

// COLORS
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

// Firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

// Controller
var authController = AuthController.instance;
