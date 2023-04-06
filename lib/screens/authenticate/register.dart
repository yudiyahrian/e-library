import 'package:e_library/shared/loading.dart';
import 'package:flutter/material.dart';
import 'package:e_library/services/auth.dart';
import 'package:e_library/shared/constants.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  const Register({Key? key, required this.toggleView}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';
  @override
  Widget build(BuildContext context) {
    return loading ? const Loading() : Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0,
        title: const Text('Sign up'),
        actions: [
          TextButton.icon(
            icon: const Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: const Text(
              'Sign in',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              setState(() {
                widget.toggleView();
              });
            },
          )
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Email'),
                  validator: (val) => val!.isEmpty ? 'Enter an email' : null,
                  onChanged: (val){
                    setState(() => email = val);
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: textInputDecoration.copyWith(hintText: 'Password'),
                  obscureText: true,
                  validator: (val) => val!.length < 6 ? 'Enter an password 6 chars long' : null,
                  onChanged: (val){
                    setState(() => password = val);
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[400]
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
                    'Register',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
                const SizedBox(height: 12,),
                Text(
                    error,
                    style: const TextStyle(color: Colors.red, fontSize: 14)
                )
              ],
            ),
          )
      ),
    );
  }
}
