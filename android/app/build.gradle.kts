plugins {
    id("com.android.application")
    // FlutterFire Configuration
    id("com.google.gms.google-services")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.shershah.login.google_login"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"   // ✅ Use the NDK required by firebase_core

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.shershah.login.google_login"
        minSdk = 23                // ✅ Must be at least 23 for firebase_core
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }


    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Using debug signing so `flutter run --release` works for now.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Firebase BoM (Bill of Materials) to manage versions
    implementation(platform("com.google.firebase:firebase-bom:34.1.0"))

    // Example Firebase SDKs (add what you need)
    implementation("com.google.firebase:firebase-analytics")
    // implementation("com.google.firebase:firebase-auth")
    // implementation("com.google.firebase:firebase-firestore")
}
