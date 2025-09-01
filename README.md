# 🔑 Flutter Google Login with Firebase

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Firebase](https://img.shields.io/badge/Firebase-Auth-orange?logo=firebase)
![License](https://img.shields.io/badge/License-MIT-green)

A Flutter application that demonstrates **Google Sign-In with Firebase Authentication**.  
Users can log in with their Google account, see their profile name, and log out with a single tap.

---

## 🚀 Features
- Google Sign-In integration
- Firebase Authentication setup
- User profile display (name from Google account)
- Sign-out functionality
- Clean and simple UI

---

## 🛠️ Tech Stack
- [Flutter](https://flutter.dev/) (3.x)
- [Firebase Authentication](https://firebase.google.com/docs/auth)
- [Google Sign-In](https://pub.dev/packages/google_sign_in)

---

## 📂 Project Structure
lib/
│── main.dart # Entry point, initializes Firebase
│── auth_service.dart # Google sign-in & sign-out logic
│── home_screen.dart # UI for login/logout


---

## ⚙️ Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/flutter-google-login-firebase.git
cd flutter-google-login-firebase

flutter pub get
flutter run
