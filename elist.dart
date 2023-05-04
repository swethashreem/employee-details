import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class elist extends StatefulWidget {
  const elist({super.key});

  @override
  State<elist> createState() => _elistState();
}

class _elistState extends State<elist> {
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController name=TextEditingController();
  TextEditingController email=TextEditingController();
   TextEditingController name1=TextEditingController();
  TextEditingController email1=TextEditingController(); 
   TextEditingController name2=TextEditingController();
  TextEditingController email2=TextEditingController();
   TextEditingController name3=TextEditingController();
  TextEditingController email3=TextEditingController();
  
  Future loginform()async{
    try{
       var url=Uri.parse("http://192.168.29.74/adminlogin/loginform.php");

        var res = await http.post(url,

        body:{
          "name": name.text,
          "email": email.text,
          "name1": name1.text,
          "email1": email1.text,
          "name2": name2.text,
          "email2": email2.text,
          "name3": name3.text,
          "email3": email3.text,
    }
         );
         
        var response = jsonDecode(res.body);
        
        if(response == "Error"){

        Fluttertoast.showToast(
        msg: "This USER ALREADY EXIST",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }else{
        Fluttertoast.showToast(
        msg: "Registration successfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
        }

        }
      //  }
       
       
       catch(e){
        print(e);
       }
    
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Employee List"),
      ),
      body: Column(
        children: [
        Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:name,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('name'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:email,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('email'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:name1,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('name1'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:email1,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('email1'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:name2,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('name2'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:email2,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('email2'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:name3,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('name3'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:email3,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('email3'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 TextButton(onPressed: (){loginform();}, 
                 child: Text("Employee List"))
                 
      ],),
    );
  }
}