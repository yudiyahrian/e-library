import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:e_library/shared/constants.dart';
import 'package:e_library/shared/loading.dart';
import 'package:e_library/services/auth.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? const Loading() : Material(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: DropShadowImage(
                      image: Image.asset('assets/Icon-E-Library-TB2.png', height: 80, width: 80,),
                      offset: const Offset(5,4),
                      scale: 0.9,
                      blurRadius: 5,
                    )
                ),
                const Text(
                  'E-St',
                  style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Quick Sand',
                      fontWeight: FontWeight.w700,
                      color: Color(0XFF01B58A),
                      decoration: TextDecoration.none
                  ),
                ),
                GradientText(
                    'arby',
                    style: const TextStyle(
                        fontSize: 38,
                        fontFamily: 'Quick Sand',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none
                    ),
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.ttb,
                    colors: const [
                      Color(0XFF0B1617),
                      Color(0XFF335F5C)
                    ]
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'A new way to reading',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Quick Sand',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      decoration: TextDecoration.none
                  ),
                ),
              ],
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
                          padding: EdgeInsets.only(left: 50, bottom: 10, top: 10),
                          child: Text(
                            'Your email address',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'starbhak@gmail.com', prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(Icons.mail, size: 30),
                        ),
                            prefixIconColor: MaterialStateColor.resolveWith((states) =>
                            states.contains(MaterialState.focused)
                                ? const Color(0XFF01B58A)
                                : const Color(0XFFD3D3D3))
                        ),
                        validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                        onChanged: (val){
                          setState(() => email = val);
                        },
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, bottom: 10, top: 25),
                          child: Text(
                            'Choose your password',
                            style: TextStyle(
                                fontFamily: 'Quick Sand',
                                fontWeight: FontWeight.w800,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        decoration: textInputDecoration.copyWith(hintText: 'Min 6 character', prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Icon(Icons.lock, size: 25),
                        ),
                            prefixIconColor: MaterialStateColor.resolveWith((states) =>
                            states.contains(MaterialState.focused)
                                ? const Color(0XFF01B58A)
                                : const Color(0XFFD3D3D3))
                        ),
                        validator: (val) => val!.length < 6 ? 'Enter an password 6 chars long' : null,
                        onChanged: (val){
                          setState(() => password = val);
                        },
                      ),
                    ),
                    Text(
                        error,
                        style: const TextStyle(color: Colors.red, fontSize: 14)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50)
                                    )
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color(0XFF01B58A))
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()){
                                setState(() => loading = true);
                                dynamic result = await _auth.registerWithEmailAndPassword(email, password);
                                if (result == null){
                                  setState(() {
                                    error = 'please supply a valid email';
                                    loading = false;
                                  });
                                }
                              }
                            },
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 18,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width / 2 - 75,
                            color: const Color(0XFFEBEBEB),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              'or',
                              style: TextStyle(
                                  color: Color(0XFFCECECE),
                                  fontSize: 20,
                                  fontFamily: 'Quick Sand',
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                          ),
                          Container(
                            height: 2,
                            width: MediaQuery.of(context).size.width / 2 - 75,
                            color: const Color(0XFFEBEBEB),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(50),
                                            side: const BorderSide(color: Color(0XFFD3D3D3))
                                        ),
                                      ),
                                      backgroundColor: MaterialStateProperty.all(Colors.white)
                                  ),
                                  onPressed: () {
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/google.png'),
                                      const SizedBox(width: 10,),
                                      GradientText(
                                          'Sign up with google',
                                          style: const TextStyle(
                                              fontFamily: 'Quick Sand',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                              decoration: TextDecoration.none
                                          ),
                                          gradientType: GradientType.linear,
                                          gradientDirection: GradientDirection.ttb,
                                          colors: const [
                                            Color(0XFF0B1617),
                                            Color(0XFF335F5C)
                                          ]
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
