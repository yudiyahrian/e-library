import 'package:e_library/shared/loading.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:e_library/models/user.dart';
import 'package:e_library/services/database.dart';
import 'dart:io';
import 'package:e_library/shared/constants.dart';
import 'package:e_library/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool editing = false;
  final _formKey = GlobalKey<FormState>();
  final List<String> majors = ['None','PPLG', 'TKJT', 'Animasi', 'BRC', 'TEI'];
  final List<String> classes = ['None','X','XI', 'XII'];

  String? _currentName;
  String? _currentMajor;
  String? _currentClasses;
  String? _currentPhoneNumber;
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
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close_rounded,
            size: 30.0,
          ),
        ),
        title: const Text(
          "Profile",
          style: TextStyle(fontSize: 26),
        ),
        flexibleSpace: Container(
          color: const Color(0xff1F3B3A),
        ),
      ),
      body: StreamBuilder(
        stream: DatabaseService(uid: user!.uid).userData,
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            UserData? userData = snapshot.data;
            return Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  colors: <Color>[
                    Color(0xff1A3130),
                    Color(0xff080F0F),
                  ],
                  stops: <double>[0, 1],
                ),
              ),
              child: editing
                ? Form(
                  key: _formKey,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                  children: <Widget>[
                    Stack(
                      children: [
                        Container(
                          height: 250,
                          color: const Color(0xff1F3B3A),
                          child: Center(
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: selectImageFromGallery,
                                    child: Stack(
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: image != null
                                            ? Image.file(
                                              image!,
                                              width: 120.0,
                                              height: 120.0,
                                              fit: BoxFit.cover,
                                          )
                                            : Image.network(
                                              userData!.imageUrl,
                                              width: 120.0,
                                              height: 120.0,
                                              fit: BoxFit.cover,
                                            ),
                                        ),
                                        Positioned(
                                          bottom: 0,
                                          right: 0,
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: const Color(0xFF01b58a),
                                            ),
                                            child: const Icon(
                                              Icons.edit_square,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      userData!.name,
                                      style: const TextStyle(
                                        fontSize: 22.0,
                                        color: Colors.white,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 120,
                                    height: 30,
                                    margin: const EdgeInsets.only(top: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: const BoxDecoration(
                          // color: Color(0xff1F3B3A),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/person_outline_24px.svg',
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(width: 15,),
                            SizedBox(
                              width: 200,
                              height: 57,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Fullname",
                                    style: TextStyle(
                                      color: Color(0xff01B58A),
                                      fontSize: 15,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                  ),
                                  TextFormField(
                                    initialValue: userData.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                    decoration: textInputDecorationEdit.copyWith(hintText: 'Name'),
                                    validator: (val) =>
                                    val!.isEmpty
                                        ? 'Enter an name'
                                        : null,
                                    onChanged: (val) {
                                      setState(() => _currentName = val);
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: const BoxDecoration(
                          // color: Color(0xff1F3B3A),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/bookmark.svg',
                              height: 30,
                              width: 25,
                            ),
                            const SizedBox(width: 15,),
                            SizedBox(
                              width: 200,
                              height: 59,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Class",
                                    style: TextStyle(
                                      color: Color(0xff01B58A),
                                      fontSize: 15,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                  ),
                                    DropdownButtonFormField(
                                      dropdownColor: bgOnBoard,
                                      icon: const Icon(Icons.arrow_drop_down_rounded),
                                      iconEnabledColor: greyTransColor,
                                      iconSize: 29,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Quicksand bold',
                                      ),
                                      decoration: textInputDecorationEdit.copyWith(hintText: 'Classes'),
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
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: const BoxDecoration(
                          // color: Color(0xff1F3B3A),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/star_border_purple500_24px.svg',
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(width: 15,),
                            SizedBox(
                              width: 200,
                              height: 59,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Major",
                                    style: TextStyle(
                                      color: Color(0xff01B58A),
                                      fontSize: 15,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                  ),
                                  DropdownButtonFormField(
                                    dropdownColor: bgOnBoard,
                                    icon: const Icon(Icons.arrow_drop_down_rounded),
                                    iconEnabledColor: greyTransColor,
                                    iconSize: 29,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                    decoration: textInputDecorationEdit.copyWith(hintText: 'Classes'),
                                    value: userData?.majors ?? _currentMajor,
                                    items: majors.map((major) {
                                      return DropdownMenuItem(
                                          value: major,
                                          child: Text(major)
                                      );
                                    }).toList(),
                                    onChanged: (String? value) =>
                                        setState(() => _currentMajor = value!),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        padding: const EdgeInsets.all(7.0),
                        decoration: const BoxDecoration(
                          // color: Color(0xff1F3B3A),
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/icon/local_phone_24px.svg',
                              height: 25,
                              width: 25,
                            ),
                            const SizedBox(width: 15,),
                            SizedBox(
                              width: 200,
                              height: 57,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Phone Number",
                                    style: TextStyle(
                                      color: Color(0xff01B58A),
                                      fontSize: 15,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                  ),
                                  TextFormField(
                                    initialValue: userData.phoneNumber,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Quicksand bold',
                                    ),
                                    decoration: textInputDecorationEdit.copyWith(hintText: '08123'),
                                    validator: (val) =>
                                    val!.isEmpty
                                        ? 'Enter an phone number'
                                        : null,
                                    onChanged: (val) {
                                      setState(() => _currentPhoneNumber = val);
                                    },
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 90,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(50)
                                      )
                                  ),
                                  backgroundColor: MaterialStateProperty
                                      .all(greyColor)
                              ),
                              onPressed: () {
                                setState(() {
                                  editing = false;
                                });
                              },
                              child: const Text(
                                'Cancel',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Quick Sand',
                                    fontSize: 18,
                                    color: Colors.black
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 90,
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
                                if (image != null) await uploadToFirebase(image);
                                if (_formKey.currentState!.validate()) {
                                  await DatabaseService(uid: user.uid)
                                      .updateUserData(
                                      _currentName ?? userData.name,
                                      _currentClasses ?? userData.classes,
                                      downloadURL ?? userData.imageUrl,
                                      _currentMajor ?? userData.majors,
                                      _currentPhoneNumber ?? userData.phoneNumber
                                  );
                                  setState(() {
                                    image = null;
                                    editing = false;
                                  });
                                }
                              },
                              child: const Text(
                                'Save',
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
                    )
                  ],
              ),
                )
                : ListView(
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                        height: 250,
                        color: const Color(0xff1F3B3A),
                        child: Center(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.network(
                                    userData!.imageUrl,
                                    width: 120.0,
                                    height: 120.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    userData.name,
                                    style: const TextStyle(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 30,
                                  margin: const EdgeInsets.only(top: 15),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        editing = true;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF01B58A),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: const Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Quicksand bold',
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                    padding: const EdgeInsets.all(7.0),
                    decoration: const BoxDecoration(
                      // color: Color(0xff1F3B3A),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            'assets/icon/person_outline_24px.svg',
                          height: 25,
                          width: 25,
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Fullname",
                              style: TextStyle(
                                color: Color(0xff01B58A),
                                fontSize: 15,
                                fontFamily: 'Quicksand bold',
                              ),
                            ),
                            Text(
                              userData.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Quicksand bold',
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: const BoxDecoration(
                        // color: Color(0xff1F3B3A),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon/bookmark.svg',
                            height: 28,
                            width: 25,
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Class",
                                style: TextStyle(
                                  color: Color(0xff01B58A),
                                  fontSize: 15,
                                  fontFamily: 'Quicksand bold',
                                ),
                              ),
                              Text(
                                userData.classes,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Quicksand bold',
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: const BoxDecoration(
                        // color: Color(0xff1F3B3A),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon/star_border_purple500_24px.svg',
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Major",
                                style: TextStyle(
                                  color: Color(0xff01B58A),
                                  fontSize: 15,
                                  fontFamily: 'Quicksand bold',
                                ),
                              ),
                              Text(
                                userData.majors,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Quicksand bold',
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      padding: const EdgeInsets.all(7.0),
                      decoration: const BoxDecoration(
                        // color: Color(0xff1F3B3A),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icon/local_phone_24px.svg',
                            height: 25,
                            width: 25,
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Phone Number",
                                style: TextStyle(
                                  color: Color(0xff01B58A),
                                  fontSize: 15,
                                  fontFamily: 'Quicksand bold',
                                ),
                              ),
                              Text(
                                userData.phoneNumber,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Quicksand bold',
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                  ),
                ],
              ),
            );
          }else {
            return const Loading();
          }
        }
      ),
    );
  }
}
