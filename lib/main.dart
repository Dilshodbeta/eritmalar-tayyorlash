import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: eritmalar(),
  ));
}

class eritmalar extends StatefulWidget {
  const eritmalar({super.key});

  @override
  State<eritmalar> createState() => _eritmalarState();
}

class _eritmalarState extends State<eritmalar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Eritmalar tayyorlash")),
        actions: [],
        backgroundColor: Color.fromARGB(217, 33, 196, 7),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("assets/images/eritma.jpg"),
                fit: BoxFit.cover)),
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 70),
            child: Container(
              child: Text(
                'Eritma foiz konsentratsiyasini topish',
                style: TextStyle(
                    color: Color.fromARGB(255, 5, 214, 68), fontSize: 20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 23),
            child: Container(
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color.fromARGB(255, 238, 235, 235)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Erituvchi miqdori",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(157, 5, 182, 85)),
                    contentPadding: const EdgeInsets.all(10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: Colors.teal))),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
