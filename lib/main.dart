import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 30, right: 30),
          child: ListView(
            children: [
              const Icon(
                Icons.diamond_outlined,
                size: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "SHRINE",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              const SizedBox(
                height: 100,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                    left: 10,
                    top: 20,
                  ),
                  label: const Text("Username"),
                  labelStyle: const TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                  filled: true,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.purple.shade300,
                    ),
                  ),
                ),
                cursorColor: Colors.black54,
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    top: 20,
                  ),
                  label: Text("Password"),
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                  filled: true,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                    ),
                  ),
                ),
                obscureText: true,
                cursorColor: Colors.black54,
              ),
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "CANCEL",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(
                          color: Colors.blueGrey, fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
