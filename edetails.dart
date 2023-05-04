import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_employee/elist.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class edetails extends StatefulWidget {
  const edetails({super.key});

  @override
  State<edetails> createState() => _edetailsState();
}

class _edetailsState extends State<edetails> {

  
GlobalKey<FormState> formKey=GlobalKey<FormState>();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  
  TextEditingController eid=TextEditingController();
   TextEditingController name=TextEditingController();
    TextEditingController email=TextEditingController();
     TextEditingController address=TextEditingController();
      TextEditingController phone=TextEditingController();

       Future insert()async{
    try{
       var url=Uri.parse("http://192.168.29.74/adminlogin/insert.php");

        var res = await http.post(url,

        body:{
          "eid": eid.text,
          "name": name.text,
          "email": email.text,
          "address": address.text,
          "phone": phone.text,

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
    return Scaffold(appBar: AppBar(
      title: Text("Employee Details"),
    ),
    body: Column(
      children: [
        Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:eid,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('Employee Id'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:name,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('Name'),
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
                      label: Text('Email'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:address,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('Address'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),
                 Container(
                  margin: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller:phone,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                      label: Text('Phone Number'),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 ),

                 TextButton(
                  onPressed: (){
                    insert();
                    Navigator.push(context,MaterialPageRoute(
                      builder: (context) => elist()),);}, 
                  child: Text("View Employee Details", style: TextStyle(
                    fontSize: 20,
                    ),))
      ],
    ),
    );
  }
}