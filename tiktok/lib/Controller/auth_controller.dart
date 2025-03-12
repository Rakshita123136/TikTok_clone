import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tiktok/constants.dart';
import 'package:tiktok/View/screens/auth/login_screen.dart';
import 'package:tiktok/View/screens/home_screen.dart';
import 'package:tiktok/Model/user.dart' as model;

class AuthController extends GetxController {
  /// Singleton instance of AuthController
  static AuthController get instance => Get.find();

  // Reactive user state
  final Rx<User?> _user = Rx<User?>(firebaseAuth.currentUser);

  // Reactive picked image
  final Rx<File?> _pickedImage = Rx<File?>(null);
  File? get profilePhoto => _pickedImage.value;
  User? get user => _user.value; // Nullable check for safety

  @override
  void onReady() {
    super.onReady();
    _user.bindStream(firebaseAuth.authStateChanges());
    ever(_user, _setInitialScreen);
  }

  void _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAll(() => LoginScreen()); // Navigate to Login
    } else {
      Get.offAll(() => const HomeScreen()); // Navigate to Home
    }
  }

  /// Pick an image from the gallery
  Future<void> pickImage() async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (pickedImage != null) {
        _pickedImage.value = File(pickedImage.path);
        Get.snackbar(
          'Profile Picture',
          'Successfully selected profile picture!',
        );
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick an image: $e');
    }
  }

  /// Upload profile picture to Firebase Storage
  Future<String> _uploadToStorage(File image) async {
    Reference ref = firebaseStorage.ref().child(
      'profilePics/${firebaseAuth.currentUser!.uid}',
    );
    UploadTask uploadTask = ref.putFile(image);
    TaskSnapshot snap = await uploadTask;
    return await snap.ref.getDownloadURL();
  }

  /// Register a new user
  Future<void> registerUser(
    String username,
    String email,
    String password,
    File? image,
  ) async {
    if (username.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        image == null) {
      Get.snackbar('Error', 'Please enter all fields');
      return;
    }

    try {
      UserCredential cred = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      String downloadUrl = await _uploadToStorage(image);

      model.User newUser = model.User(
        name: username,
        email: email,
        uid: cred.user!.uid,
        profilePhoto: downloadUrl,
      );

      await firestore
          .collection('users')
          .doc(cred.user!.uid)
          .set(newUser.toJson());
    } catch (e) {
      Get.snackbar('Registration Failed', e.toString());
    }
  }

  /// Login user
  Future<void> loginUser(String email, String password) async {
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter all fields');
      return;
    }

    try {
      await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    }
  }

  /// Logout user
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }
}
