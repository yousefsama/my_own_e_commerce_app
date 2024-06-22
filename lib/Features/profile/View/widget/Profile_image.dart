import 'dart:developer';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_own_e_commerce_app/core/utils/assets/assetsImage.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({super.key, required this.image});
  final String image;

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? file;
  String? profileImageUrl;

  @override
  Widget build(BuildContext context) {
    Stream<DocumentSnapshot> users = FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .snapshots(includeMetadataChanges: true);
    return StreamBuilder<DocumentSnapshot>(
        stream: users,
        builder: (context, snapshot) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width < 800
                    ? MediaQuery.sizeOf(context).width * 0.25
                    : MediaQuery.sizeOf(context).width * 0.22),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Stack(
                children: [
                  CircleAvatar(
                    foregroundImage: NetworkImage(
                      widget.image ??
                          'https://as1.ftcdn.net/v2/jpg/03/46/83/96/1000_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () async {
                        await pickimage();
                        // ignore: use_build_context_synchronously
                      },
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 6,
                        child: Icon(
                          Icons.edit,
                          size: 7,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  pickimage() async {
    //pick image from gallery
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? imageGallery =
        await picker.pickImage(source: ImageSource.gallery);

    file = File(imageGallery!.path);
    //upload picked image to firebase storage
    if (file != null) {
      var imageName = basename(imageGallery.name);
      var refStorage = FirebaseStorage.instance.ref(imageName);
      await refStorage.putFile(file!);
      profileImageUrl = await refStorage.getDownloadURL();
    }
    //update userpofile on firebase firestore url
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    await users.doc(FirebaseAuth.instance.currentUser!.uid).set({
      'image': profileImageUrl,
    }, SetOptions(merge: true));

    return profileImageUrl;
  }
}
