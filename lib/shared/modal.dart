import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ModalPopup extends StatelessWidget {
  const ModalPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF1F3B3A),
      content: Container(
        height: 150,
        width: 350,
        child: Column(
          children: const [
            Icon(
              Icons.warning_amber_rounded,
              size: 100,
              color: Color(0xFF01B58A),
            ),
            Text(
              'Are you sure you want to logout?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Quick Sand',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all((const Color(0xFFBCBCBC))),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text("Cancel",
                  style: TextStyle(
                    fontFamily: "Quick Sand",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all((const Color(0xFF01B58A))),
                ),
                onPressed: () async {
                  if(context.mounted) Navigator.pop(context);
                  await FirebaseAuth.instance.signOut();
                },
                child: const Text("Logout",
                  style: TextStyle(
                    fontFamily: "Quick Sand",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
            ),

          ],
        )
      ],
    );
  }
}
