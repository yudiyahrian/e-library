import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:e_library/models/user.dart';
import 'package:e_library/services/database.dart';
import 'package:e_library/shared/loading.dart';
import 'package:e_library/shared/constants.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  final _formKey = GlobalKey<FormState>();
  final List<String> genders = ['Man', 'Woman'];
  final List<String> classes = ['XI PPLG 1', 'XI PPLG 2'];

  String? _currentName;
  String? _currentGender;
  String? _currentClasses;
  File? image;
  String? downloadURL;
  bool isLoading = false;

  selectImageFromGallery() async
  {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    if(imageFile != null)
    {
      setState(() {
        image = File(imageFile.path);
      });
    }
  }

  Future<String?> uploadFile(File image) async
  {
    String postId=DateTime.now().millisecondsSinceEpoch.toString();
    Reference ref = FirebaseStorage.instance.ref().child("profile-images").child("post_$postId.jpg");
    await ref.putFile(image);
    downloadURL = await ref.getDownloadURL();
    return downloadURL;
  }

  uploadToFirebase(image) async
  {
    await uploadFile(image).then((value) {
      setState(() {});
    }); // this will upload the file and store url in the variable 'url'
  }

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<UserModel?>(context);

    return Scaffold(
      body: SafeArea(
        child: StreamBuilder(
            stream: DatabaseService(uid: user!.uid).userData,
            builder: (context, snapshot) {
              if(snapshot.hasData) {
                UserData? userData = snapshot.data;
                return Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Text(
                          'Update your user settings.',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: selectImageFromGallery,
                          child: Container(
                            width: 120,
                            height: 120,
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.blue
                            ),
                            child: Center(
                              child: image != null
                                  ? Image.file(image!)
                                  : Image.network(userData!.imageUrl)
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          initialValue: userData?.name,
                          decoration: textInputDecoration.copyWith(hintText: 'Name'),
                          validator: (val) =>
                          val!.isEmpty
                              ? 'Enter an name'
                              : null,
                          onChanged: (val) {
                            setState(() => _currentName = val);
                          },
                        ),
                        // dropdown
                        DropdownButtonFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Gender'),
                          value: userData?.gender ?? _currentGender,
                          items: genders.map((gender) {
                            return DropdownMenuItem(
                                value: gender,
                                child: Text(gender)
                            );
                          }).toList(),
                          onChanged: (String? value) =>
                              setState(() => _currentGender = value!),
                        ),
                        DropdownButtonFormField(
                          decoration: textInputDecoration.copyWith(hintText: 'Classes'),
                          value: userData?.classes ?? _currentClasses,
                          items: classes.map((classes) {
                            return DropdownMenuItem(
                                value: classes,
                                child: Text(classes)
                            );
                          }).toList(),
                          onChanged: (String? value) =>
                              setState(() => _currentClasses = value!),
                        ),

                        const SizedBox(height: 20),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.pink[400]
                            ),
                            onPressed: () async {
                              if(image != null ) uploadToFirebase(image);
                              if(_formKey.currentState!.validate()) {
                                await DatabaseService(uid: user.uid).updateUserData(
                                    _currentName ?? userData!.name,
                                    _currentGender ?? userData!.gender,
                                    _currentClasses ?? userData!.classes,
                                    downloadURL ?? userData!.imageUrl
                                );
                                // if (context.mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Wrapper()));
                                // if (context.mounted) Navigator.pop(context);
                              }
                            },
                            child: const Text(
                              'Update',
                              style: TextStyle(color: Colors.white),
                            )
                        ),
                      ],
                    )
                );
              } else {
                return const Loading();
              }
            }
        ),
      ),
    );
  }
}
