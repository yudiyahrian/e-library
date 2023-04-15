import 'package:e_library/shared/colors.dart';
import 'package:flutter/material.dart';
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
        color: bgOnBoard,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset('assets/New-Icon.png', height: 55, width: 55,),
                ),
                const Text(
                  'E-St',
                  style: TextStyle(
                      fontSize: 38,
                      fontFamily: 'Quick Sand',
                      fontWeight: FontWeight.w700,
                      color: btnColor,
                      decoration: TextDecoration.none
                  ),
                ),
                const Text(
                    'arby',
                    style: TextStyle(
                        fontSize: 38,
                        fontFamily: 'Quick Sand',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: whiteColor
                    ),
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
                      color: whiteColor,
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
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: whiteColor
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: textInputDecoration.copyWith(hintText: 'starbhak@gmail.com', prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.mail, size: 30),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                width: 2,
                                height: 25,
                                color: greyTransColor,
                              )
                            ],
                          ),
                        ),
                            prefixIconColor: MaterialStateColor.resolveWith((states) =>
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
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: whiteColor
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: textInputDecoration.copyWith(hintText: 'Min 6 character', prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.lock, size: 28),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                width: 2,
                                height: 25,
                                color: greyTransColor,
                              )
                            ],
                          ),
                        ),
                            prefixIconColor: MaterialStateColor.resolveWith((states) =>
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
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Quick Sand',
                                  fontSize: 20,
                                  color: Color(0XFFFCFCFC)
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
                                      backgroundColor: MaterialStateProperty.all(bgOnBoard)
                                  ),
                                  onPressed: () {
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/google.png'),
                                      const SizedBox(width: 10,),
                                      const Text(
                                          'Sign up with google',
                                          style: TextStyle(
                                              fontFamily: 'Quick Sand',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              color: whiteColor,
                                              decoration: TextDecoration.none
                                          ),
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
