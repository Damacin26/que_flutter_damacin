import 'package:flutter/material.dart';
import 'registrar.dart';
import 'accounting.dart';
import 'main.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DashBoard_student extends StatefulWidget {
  const DashBoard_student({Key? key}) : super(key: key);

  @override
  DashBoard_studentState createState() => DashBoard_studentState();
}

class DashBoard_studentState extends State<DashBoard_student> {

  Future logout() async {
    var url = Uri.http("192.168.87.118/",'PROJECT/logout.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "id": id,
    });
    var check = json.decode(response.body);
    if(check.toString() == "Success"){
      Fluttertoast.showToast(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        msg: 'You have logged out',
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ),
      );

    }
    else{
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'Error',
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
        title: const Text('PhilCST Qeueing System'),
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
                'Please select a department you want to transact with',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Accounting(),
                    ),
                  );
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
                  child: Text('Accounting',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Registrar(),
                    ),
                  );

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
                  child: Text('Registrar',
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                  logout();
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
                  child: Text('Log Out',
                      style: TextStyle(
                          color: Colors.white.withOpacity(.8),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
