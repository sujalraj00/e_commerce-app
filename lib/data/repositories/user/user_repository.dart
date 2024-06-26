// repos class for user related information
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../features/personalization/models/user_model.dart';
import '../../../utils/exceptions/firebase_exception.dart';
import '../../../utils/exceptions/format_exceptions.dart';
import '../../../utils/exceptions/platform_exceptions.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // function to save user data to FireStore
  Future<void>saveUserRecord(UserModel user ) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch(e) {
      throw TFirebaseException(e.code).message;
    } on TFormatException catch (_) {
      throw const FormatException();
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
    }
}