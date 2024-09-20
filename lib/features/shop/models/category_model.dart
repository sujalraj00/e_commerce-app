import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel{

  String id;
  String name;
  String parentId;
  String image;
  bool isFeatured;

  CategoryModel({
    required this.id,
    this.parentId ='',
    required this.name,
    required this.image,
    required this.isFeatured,
});

  // empty helper fun
 static CategoryModel empty() => CategoryModel(id: '', parentId: '', name: '', image: '', isFeatured: false);

 // convert model to json structure so that you can store it in firebase
 Map<String, dynamic> toJson(){
   return {
     'Name' : name,
     'Image' : image,
     'ParentId' : parentId,
     'IsFeatured' : isFeatured
   };
 }

 // map json oriented document snapshot from firebase to usermodel
 factory CategoryModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document){
   if(document.data() != null) {
     final data = document.data();


     // map json record to model
     return CategoryModel(
         id: document.id ,
         name: data!['Name'] ?? '',
         image: data['Image'] ?? '',
         isFeatured: data['IsFeatured'] ?? false,
         parentId: data['ParentId'] ?? ''
     );
   } else{
     return CategoryModel.empty();
   }
 }
}