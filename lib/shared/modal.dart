import 'package:flutter/material.dart';

void main() => runApp(const Modal());

class Modal extends StatelessWidget {
  const Modal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
  backgroundColor: const Color(0xFF1F3B3A),
  content: Container(
    height: 178,
    width: 350,
    child: Column(
      children: [
        Icon(
          Icons.warning_amber_rounded,
          size: 120,
          color: const Color(0xFF01B58A),
        ),
        const Text(
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
                          backgroundColor: MaterialStateProperty.all((Color(0xFFBCBCBC))),
                          minimumSize: MaterialStateProperty.all(Size(35, 48)),
                        ),  
                        onPressed: (){}, 
                        child: Text("Cancel",
                        style: TextStyle(
                          fontFamily: "Quick Sand",
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        )
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all((Color(0xFF01B58A))),
                          minimumSize: MaterialStateProperty.all(Size(35, 48)),
                        ),  
                        onPressed: (){}, 
                        child: Text("Logout",
                        style: TextStyle(
                          fontFamily: "Quick Sand",
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                        )
                        ),
                        
                      ],
                    )
  ],
);
        }
        
         

      ),
      child: const Text('Show Dialog'),
    );
  }
}
