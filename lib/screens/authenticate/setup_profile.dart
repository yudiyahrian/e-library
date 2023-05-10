import 'package:e_library/screens/setup/setup.dart';
import 'package:e_library/shared/colors.dart';
import 'package:e_library/shared/loading.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:e_library/shared/constants.dart';
import 'package:e_library/services/database.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:e_library/models/user.dart';
import 'dart:io';

class SetupProfile extends StatefulWidget {
  const SetupProfile({Key? key}) : super(key: key);

  @override
  State<SetupProfile> createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {

  final _formKey = GlobalKey<FormState>();

  final List<String> classes = ['None','X', 'XI', 'XII'];
  final List<String> majors = ['None','PPLG', 'TKJT', 'ANIMASI', 'BRC', 'TEI'];

  String? _currentName;
  String? _currentClasses;
  String? _currentMajors;
  String? _currentPhoneNumber;
  File? image;
  String? downloadURL;
  bool isLoading = false;
  bool animate = false;

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

    return Material(
      child: SafeArea(
        child: StreamBuilder(
          stream: DatabaseService(uid: user!.uid).userData,
          builder: (context, snapshot) {
            if(snapshot.hasData) {
              UserData? userData = snapshot.data;

              return Container(
                color: bgOnBoard,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              'assets/New-Icon.png', height: 40, width: 40,),
                          ),
                          const Text(
                            'E-St',
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'Quick Sand',
                                fontWeight: FontWeight.w700,
                                color: btnColor,
                                decoration: TextDecoration.none
                            ),
                          ),
                          const Text(
                            'arby',
                            style: TextStyle(
                                fontSize: 26,
                                fontFamily: 'Quick Sand',
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.none,
                                color: greyColor
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60,),
                    Column(
                      children: [
                        const Text(
                          'Set Up Your Profile',
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'Quick Sand',
                              fontWeight: FontWeight.w700,
                              color: whiteColor,
                              decoration: TextDecoration.none
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, bottom: 10, top: 10),
                                      child: Text(
                                        'Fullname',
                                        style: TextStyle(
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: whiteColor
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextFormField(
                                    initialValue: userData?.name,
                                    textInputAction: TextInputAction.next,
                                    maxLines: 1,
                                    textAlignVertical: TextAlignVertical.center,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.white),
                                    decoration: textInputDecoration.copyWith(
                                      hintText: 'rasstore', prefixIcon: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(Icons.person, size: 30),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            width: 1.5,
                                            height: 25,
                                            color: greyTransColor,
                                          )
                                        ],
                                      ),
                                    ),
                                      prefixIconColor: MaterialStateColor
                                          .resolveWith((states) =>
                                      states.contains(MaterialState.focused)
                                          ? btnColor
                                          : greyTransColor
                                      ),
                                      hintStyle: const TextStyle(
                                          fontSize: 18,
                                          height: 1,
                                          color: greyTransColor
                                      ),
                                    ),
                                    validator: (val) =>
                                    val!.isEmpty
                                        ? 'Enter an name'
                                        : null,
                                    onChanged: (val) {
                                      setState(() => _currentName = val);
                                    },
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, bottom: 10, top: 25),
                                      child: Text(
                                        'Class',
                                        style: TextStyle(
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: whiteColor
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 20,),
                                    SizedBox(
                                      width: 140,
                                      child: DropdownButtonFormField(
                                        dropdownColor: bgOnBoard,
                                        icon: const Icon(Icons.arrow_drop_down_rounded),
                                        iconEnabledColor: greyTransColor,
                                        iconSize: 32,
                                        style: const TextStyle(color: Colors.white),
                                        decoration: textInputDecoration.copyWith(
                                            hintText: 'Classes', prefixIcon: Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(Icons.school, size: 30),
                                              Container(
                                                margin: const EdgeInsets.symmetric(
                                                    horizontal: 6),
                                                width: 1.5,
                                                height: 25,
                                                color: greyTransColor,
                                              )
                                            ],
                                          ),
                                        ),
                                            prefixIconColor: MaterialStateColor
                                                .resolveWith((states) =>
                                            states.contains(MaterialState.focused)
                                                ? btnColor
                                                : greyTransColor
                                            ),
                                            hintStyle: const TextStyle(
                                                fontSize: 18,
                                                height: 0.8,
                                                color: greyTransColor
                                            ),
                                            contentPadding: EdgeInsets.all(5)
                                        ),
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
                                    ),
                                    const SizedBox(width: 8,),
                                    SizedBox(
                                      width: 163,
                                      child: DropdownButtonFormField(
                                        dropdownColor: bgOnBoard,
                                        icon: const Icon(Icons.arrow_drop_down_rounded),
                                        iconEnabledColor: greyTransColor,
                                        iconSize: 32,
                                        style: const TextStyle(color: Colors.white),
                                        decoration: textInputDecoration.copyWith(
                                            hintText: 'Classes', prefixIcon: Padding(
                                          padding: const EdgeInsets.only(left: 15),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const Icon(Icons.school, size: 30),
                                              Container(
                                                margin: const EdgeInsets.symmetric(
                                                    horizontal: 6),
                                                width: 1.5,
                                                height: 25,
                                                color: greyTransColor,
                                              )
                                            ],
                                          ),
                                        ),
                                            prefixIconColor: MaterialStateColor
                                                .resolveWith((states) =>
                                            states.contains(MaterialState.focused)
                                                ? btnColor
                                                : greyTransColor
                                            ),
                                            hintStyle: const TextStyle(
                                                fontSize: 18,
                                                height: 0.8,
                                                color: greyTransColor
                                            ),
                                            contentPadding: EdgeInsets.all(5)
                                        ),
                                        value: userData?.majors ?? _currentMajors,
                                        items: majors.map((classes) {
                                          return DropdownMenuItem(
                                              value: classes,
                                              child: Text(classes)
                                          );
                                        }).toList(),
                                        onChanged: (String? value) =>
                                            setState(() => _currentMajors = value!),
                                      ),
                                    ),
                                    const SizedBox(width: 20,),
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, bottom: 10, top: 25),
                                      child: Text(
                                        'Phone Number',
                                        style: TextStyle(
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: whiteColor
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 130),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    maxLines: 1,
                                    textAlignVertical: TextAlignVertical.center,
                                    textAlign: TextAlign.left,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                    initialValue: userData?.phoneNumber,
                                    style: TextStyle(
                                        color: Colors.white,
                                      height: 1
                                    ),
                                    decoration: textInputDecoration.copyWith(
                                      hintText: '08123456', prefixIcon: Padding(
                                      padding: const EdgeInsets.only(left: 15),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Icon(Icons.phone, size: 28),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 6),
                                            width: 1.5,
                                            height: 25,
                                            color: greyTransColor,
                                          )
                                        ],
                                      ),
                                    ),
                                      prefixIconColor: MaterialStateColor
                                          .resolveWith((states) =>
                                      states.contains(MaterialState.focused)
                                          ? btnColor
                                          : greyTransColor
                                      ),
                                      hintStyle: const TextStyle(
                                          fontSize: 16,
                                          height: 1,
                                          color: greyTransColor
                                      ),
                                    ),
                                    validator: (val) =>
                                    val!.isEmpty
                                        ? 'Enter an phone number'
                                        : null,
                                    onChanged: (val) {
                                      setState(() => _currentPhoneNumber = val);
                                    },
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 20, bottom: 10, top: 25),
                                      child: Text(
                                        'Profile Picture',
                                        style: TextStyle(
                                            fontFamily: 'Quick Sand',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: whiteColor
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: selectImageFromGallery,
                                          child: AnimatedContainer(
                                            height: image != null ? 120 : 80,
                                            decoration: BoxDecoration(
                                              color: image != null ? Colors.grey.withOpacity(0.3) : Color(0x99E8E8E8),
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            duration: Duration(seconds: 1),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                image == null
                                                    ? Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.cloud_upload_rounded,
                                                      color: whiteColor,
                                                      size: 32,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(left: 10),
                                                      child: Text(
                                                        'Click to upload your profile',
                                                        style: TextStyle(
                                                            color: whiteColor,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                            fontFamily: 'Quick Sand'
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                                    : Stack(
                                                  children: [
                                                    Positioned(
                                                      right: 5,
                                                      child: AnimatedOpacity(
                                                        opacity: animate ? 1 : 0,
                                                        duration: Duration(milliseconds: 500),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              image = null;
                                                            });
                                                          },
                                                          child: Icon(
                                                                Icons.close,
                                                              size: 32,
                                                              color: greyColor,
                                                            ),
                                                        ),
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        AnimatedContainer(
                                                          margin: const EdgeInsets.only(left: 15),
                                                          width: animate ? 100 : 0,
                                                          height: animate ? 100 : 0,
                                                          duration: Duration(milliseconds: 500),
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius.circular(100),
                                                            child: Image.file(
                                                              image!,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            onEnd: () {
                                              setState(() {
                                                animate = !animate;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                        height: 45,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(50)
                                                  )
                                              ),
                                              backgroundColor: MaterialStateProperty
                                                  .all(const Color(0XFF01B58A))
                                          ),
                                          onPressed: () async {
                                            if(image != null ) await uploadToFirebase(image);
                                            if(_formKey.currentState!.validate()) {
                                            await DatabaseService(uid: user.uid).updateUserData(
                                              _currentName ?? userData!.name,
                                              _currentClasses ?? userData!.classes,
                                              downloadURL ?? userData!.imageUrl,
                                              _currentMajors ?? userData!.majors,
                                              _currentPhoneNumber ?? userData!.phoneNumber
                                            );
                                            // setState(() {
                                            //   image = null;
                                            // });
                                            if (context.mounted) Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Setup()));
                                            // if (context.mounted) Navigator.pop(context);
                                            }
                                          },
                                          child: const Text(
                                            'Next',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Quick Sand',
                                                fontSize: 18,
                                                color: Colors.white
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Loading();
            }
          }
        ),
      ),
    );
  }
}
