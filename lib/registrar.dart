import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dashboard_student.dart';
import 'main.dart';
import 'dart:convert';


class Registrar extends StatefulWidget {
  const Registrar({Key? key}) : super(key: key);

  @override
  RegistrarState createState() => RegistrarState();
}

class RegistrarState extends State<Registrar> {


  Future clearance_signing() async {
    var url = Uri.http("192.168.87.118",'PROJECT/clearance_signing.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "id": id,
    });
    var check = json.decode(response.body);
    if(check.toString() == "Success"){
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'You are in queue, please wait for your number to be called',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
    if(check.toString() == "Error"){
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'You are currently in a transaction',
        toastLength: Toast.LENGTH_SHORT,
      );

      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
  }

  Future claim_permit() async {
    var url = Uri.http("192.168.87.118",'PROJECT/claim_permit.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "id": id,
    });
    var check = json.decode(response.body);
    if(check.toString() == "Success"){
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'You are in queue, please wait for your number to be called',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
    if(check.toString() == "Error"){
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'You are currently in a transaction',
        toastLength: Toast.LENGTH_SHORT,
      );

      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
  }


  Future claim_grades() async {
    var url = Uri.http("192.168.87.118",'PROJECT/claim_grades.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "id": id,
    });
    var check = json.decode(response.body);
    if(check.toString() == "Success"){
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'You are in queue, please wait for your number to be called',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
    if(check.toString() == "Error"){
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'You are currently in a transaction',
        toastLength: Toast.LENGTH_SHORT,
      );

      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
  }
  Future claim_documents() async {
    var url = Uri.http("192.168.87.118",'PROJECT/claim_documents.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "id": id,
    });
    var check = json.decode(response.body);
    if(check.toString() == "Success"){
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'You are in queue, please wait for your number to be called',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
    if(check.toString() == "Error"){
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'You are currently in a transaction',
        toastLength: Toast.LENGTH_SHORT,
      );

      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => DashBoard_student(),
        ),
      );

    }
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounting Department'),
        backgroundColor: Colors.purple.shade600,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.teal.shade200, Colors.purple.shade900])),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 300,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      CircleAvatar(
                        radius: 50.0,
                        backgroundColor: Colors.white,


                        backgroundImage: AssetImage('images/logo.png'),
                      ),

                    ],

                  ),
                ),
              ),
              Text(
                'Please choose a transaction',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white.withOpacity(.8),
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  clearance_signing();
                },
                child: Container(
                  height: 53,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12.withOpacity(.2),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(colors: [
                        Colors.purple.shade600,
                        Colors.teal.shade200
                      ])),
                  child: Text('Clearance Signing',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  claim_permit();
                },
                child: Container(
                  height: 53,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12.withOpacity(.2),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(colors: [
                        Colors.purple.shade600,
                        Colors.teal.shade200
                      ])),
                  child: Text('Claim Permit',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  claim_grades();
                },
                child: Container(
                  height: 53,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12.withOpacity(.2),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(colors: [
                        Colors.purple.shade600,
                        Colors.teal.shade200
                      ])),
                  child: Text('Claim Grades',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  claim_documents();
                },
                child: Container(
                  height: 53,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black12.withOpacity(.2),
                            offset: const Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      gradient: LinearGradient(colors: [
                        Colors.purple.shade600,
                        Colors.teal.shade200
                      ])),
                  child: Text('Claim Documents',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
