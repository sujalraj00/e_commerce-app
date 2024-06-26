import 'package:e_commerce/features/authentication/screens/login/login.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/navigation_menu.dart';
import 'package:e_commerce/utils/exceptions/firebase_auth_exception.dart';
import 'package:e_commerce/utils/exceptions/firebase_exception.dart';
import 'package:e_commerce/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  // --------Variables ---------
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // get authenticated user data
  User? get authUser => _auth.currentUser;
  // ----- Called from main.dart on app launch
  @override
  void onReady(){
    // remove the native screen
    FlutterNativeSplash.remove();
    // redirect to the appropriate screen
    screenRedirect();
  }

  // --- Function to show Relevant Screen ----
  screenRedirect () async {
    final user = _auth.currentUser;
    if(user != null ) {
      if(user.emailVerified){
        Get.offAll(() => const NavigationMenu());
      } else{
        Get.offAll(() => VerifyEmailScreen(email: _auth.currentUser?.email,));
      }
    } else{
      // Local Storage
      deviceStorage.writeIfNull('IsFirstTime', true);
      // check if it the first time launching
      deviceStorage.read('IsFirstTime') != true
          ? Get
          .offAll(() => const LoginScreen()) // redirect to login screen if not the first time
          : Get.offAll(const OnBoardingScreen()); // redirect to onboarding screen if its the first time
    }

  }
  //   if(kDebugMode){
  //     print('================GET STORAGE Auth Repo=====================');
  //     print(deviceStorage.read('IsFirstTime'));
  //   }
  //   deviceStorage.writeIfNull('IsFirstTime', true);
  //   deviceStorage.read('IsFirstTime') != true ? Get.offAll(() => const LoginScreen()) : Get.offAll(() => const OnBoardingScreen());
  // }

  /* -------------------------Email & Password Sign -IN---------------------------*/

    /// [EMAILAUTHENTICATION] -LogIn
  Future<UserCredential> loginWithEmailAndPassword(String email, String password) async {
    try{
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw const TFormatException();
    }  on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }



  /// [EMAILAUTHENTICATION] -Register
    Future<UserCredential> registerWithEmailAndPassword(String email, String password) async {
      try{
        return await _auth.createUserWithEmailAndPassword(email: email, password: password);
      } on FirebaseAuthException catch (e) {
        throw TFirebaseAuthException(e.code).message;
      } on FirebaseException catch (e){
        throw TFirebaseException(e.code).message;
      } on FormatException catch (_){
        throw const TFormatException();
      }  on PlatformException catch (e) {
        throw TPlatformException(e.code).message;
      } catch (e) {
        throw 'Something went wrong. Please try again.';
      }
    }

    /// [EMAILAUTHENTICATION] - Mail verification
  Future<void> sendEmailVerification() async {
    try{
       await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e){
      throw const TFormatException();
    }  on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }

  //[ReAuthentication]  ReAuthenticate user
  /// [EMAIL AUTHENTICATION] -------FORGET PASS

  Future<void> sendPasswordResetEmail(String email) async {
    try{
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch (e){
      throw const TFormatException();
    }  on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }


 /*---------------- federated identity and social sign in----------------------*/
/// [GOOGLE AUTH] - GOOGLE
  Future<UserCredential?> signInWithGoogle() async {
    try{
      // trigger the auth flow
      final GoogleSignInAccount? userAccount = await GoogleSignIn().signIn();

      // obtain the auth detail from the request
      final GoogleSignInAuthentication? googleAuth = await userAccount?.authentication;

      // create a new credential
      final credentials = GoogleAuthProvider.credential(accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      // once signed in return the UserCredential
      return await _auth.signInWithCredential(credentials);

    } on FirebaseAuthException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e){
      throw TFirebaseException(e.code).message;
    } on FormatException catch (_){
      throw const TFormatException();
    }  on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      if(kDebugMode) print('Something went wrong: $e');
      return null;
    }
  }
/// [FACEBOOK AUTH]
/*----------------  ./ end federated identity and social sign in---------------*/

/// [LOGOUT USER] - valid for any auth
 Future<void> logout() async{
   try{
     await GoogleSignIn().signOut();
     await FirebaseAuth.instance.signOut();
     Get.offAll(() => const LoginScreen());
   } on FirebaseAuthException catch (e) {
     throw TFirebaseAuthException(e.code).message;
   } on FirebaseException catch (e){
     throw TFirebaseException(e.code).message;
   } on FormatException catch (_){
     throw const TFormatException();
   }  on PlatformException catch (e) {
     throw TPlatformException(e.code).message;
   } catch (e) {
     throw 'Something went wrong. Please try again.';
   }
 }


 // [DELETE USER] remove account from FireStore acc and auth
}