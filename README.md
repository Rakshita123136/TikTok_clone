

# 🚀 **TikTok Clone - Flutter App** 🎥  
📱 A fully-functional TikTok clone built using **Flutter**, **Dart**, and **Firebase**. This app includes real-time video uploads, likes, comments, authentication, and more.  

---

## 🌟 **Features**

### ✅ **User Authentication**
- Sign-up, login, and logout using **Firebase Authentication**.  
- Secure password management.  

### 📹 **Video Upload & Playback**
- Upload videos from the gallery or camera.  
- Real-time video streaming using **Firebase Storage**.  
- Smooth playback with **video_player** package.  

### ❤️ **Social Interactions**
- Like and comment on videos.  
- Real-time updates with **Firebase Firestore**.  

### 📊 **Video Feed**
- Scrollable video feed.  
- Swipe up/down gestures for navigation.  

### 🔍 **User Profile**
- View user-specific videos.  
- Follow/unfollow functionality.  

### 🌐 **Real-Time Backend**
- Firebase Firestore integration.  
- Real-time sync of likes, comments, and uploads.  

---

## 🛠️ **Tech Stack**
- **Frontend:** Flutter, Dart  
- **Backend:** Firebase Authentication, Firebase Firestore, Firebase Storage  
- **State Management:** GetX  
- **Video Playback:** `video_player` package  
- **Media Picker:** `image_picker` package  

---

## 📸 **Screenshots**
| ✅ Login Screen         | 📹 Video Upload        | 🎥 Video Feed           | ❤️ Like & Comment       |
|-------------------------|-----------------------|------------------------|-------------------------|
| ![Login](https://via.placeholder.com/150) | ![Upload](https://via.placeholder.com/150) | ![Feed](https://via.placeholder.com/150) | ![Like](https://via.placeholder.com/150) |

---

## 🚀 **Getting Started**

### 🔥 **Prerequisites**
- Install **[Flutter](https://docs.flutter.dev/get-started/install)**  
- Install **[Dart](https://dart.dev/get-dart)**  
- Install **Firebase CLI**  
- Clone the repository:  
```bash
git clone https://github.com/Rakshita123136/TikTok_clone.git  
cd TikTok_clone  
```

### 🔥 **Firebase Setup**
1. Go to [Firebase Console](https://console.firebase.google.com/)  
2. Create a new project.  
3. Add an Android/iOS app with the appropriate bundle ID.  
4. Download the `google-services.json` file and add it to the `android/app` directory.  
5. Enable **Firebase Authentication** with Email/Password.  
6. Enable **Firestore Database** and set security rules.  
7. Enable **Firebase Storage** for video uploads.  

### ▶️ **Run the App**
```bash
flutter pub get  
flutter run  
```

---

## 📚 **Project Structure**
```css
📂 lib  
 ┣ 📂 View  
 ┃ ┣ 📂 screens  
 ┃ ┃ ┣ login_screen.dart  
 ┃ ┃ ┣ home_screen.dart  
 ┃ ┃ ┗ profile_screen.dart  
 ┃ ┣ 📂 widgets  
 ┃ ┃ ┣ video_player.dart  
 ┃ ┃ ┗ comment_box.dart  
 ┣ 📂 Controller  
 ┃ ┣ auth_controller.dart  
 ┃ ┣ video_controller.dart  
 ┣ 📂 Model  
 ┃ ┣ user.dart  
 ┃ ┗ video.dart  
 ┗ main.dart  
```

---

## ⚙️ **Dependencies**
```yaml
dependencies:
  flutter: ^3.22.0  
  firebase_core: ^2.21.0  
  firebase_auth: ^4.6.0  
  cloud_firestore: ^4.4.0  
  firebase_storage: ^11.2.1  
  get: ^4.6.5  
  image_picker: ^0.8.7  
  video_player: ^2.7.0  
  cached_network_image: ^3.2.3  
```

---

## 🚀 **Contributing**
✅ **Contributions are welcome!**  
If you'd like to contribute:  

1. **Fork the repository.**  
2. Create a new branch:  
```bash
git checkout -b feature-name  
```
3. Commit your changes:  
```bash
git commit -m "Added new feature"  
```
4. Push to the branch:  
```bash
git push origin feature-name  
```
5. Open a **pull request**.  

---

## 🔥 **Troubleshooting**
✅ **Common Issues:**  
- 🔥 *Failed to connect to Firebase:*  
   → Ensure you’ve added the correct `google-services.json` file.  
- ⚠️ *Video upload errors:*  
   → Verify Firebase Storage permissions.  
- ❗ *App crashes on launch:*  
   → Run `flutter clean` and `flutter pub get`.  

---

## 🌟 **Author**
👩‍💻 **[Jyotika Uppar](https://github.com/Rakshita123136)**  
📧 [jayauppar2@gmail.com](mailto:jayauppar2@gmail.com)  
🔗 [LinkedIn](https://www.linkedin.com/in/your-profile)  
🐦 [Twitter](https://twitter.com/rakshh__)

---

## ⭐ **Show Your Support**
✅ If you like this project, consider **starring the repository**.  
🔥 **[Star the Project](https://github.com/Rakshita123136/TikTok_clone)**  
✨ Feel free to **fork and contribute**!  

---

## 🛠️ **License**
This project is licensed under the **MIT License**.  

---

✅ **Enjoy building your own TikTok clone! 🎥**  
🔥 **Happy Coding! 🚀**
