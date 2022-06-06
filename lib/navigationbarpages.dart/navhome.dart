import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rbkei/MainPages/announcement.dart';
import 'package:rbkei/MainPages/calendar.dart';
import 'package:rbkei/MainPages/portfolios.dart';
import 'package:rbkei/api/public_information.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../MainPages/portfolios.dart';


class navhome extends StatefulWidget {
  
  
  const navhome({Key? key}) : super(key: key);
  @override
  State<navhome> createState() => _navhomeState();
}


class Data {
  final int ID;
  final int MenuName;
  final String MenuUrlPath;
  final String Employee;
  final String MenuIconName;
  final String Student;
  
  
  Data({
    required this.ID,
    required this.MenuName,
    required this.MenuUrlPath,
    required this.Employee,
    required this.MenuIconName,
    required this.Student,
  });

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        ID: json["ID"],
        MenuName: json["MenuName"],
        MenuUrlPath: json["MenuUrlPath"],
        Employee: json["Employee"],
        MenuIconName: json["MenuIconName"],
        Student: json["Student"]
      );
      late List<Data> data;

}

class _navhomeState extends State<navhome> {
   
  var ID;

  var MenuName;

  var Employee;

  var MenuUrlPath;

  var MenuIconName;

  var Student;

  void Data(
    String ID,
    MenuName,
    Employee,
    MenuUrlPath,
    MenuIconName,
    Student, String string
  )async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     http.Response response =
      await http.get(Uri.parse('https://project.rbkei.org/SchoolDesk/SDAppMenus.json'),
      );
      print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body.toString());
         print(data['MenuName']);

        print('sucessfull');
      } else {
        print('failed');
      }
}
  
@override
  void initState() {
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: (
         Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(15),
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    children: <Widget>[
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () async {
                            // var url = Uri.parse('https://project.rbkei.org/SchoolDesk/SDAppMenus.json');
                            // var response = await http.get(url);
                            // print('Response status: ${response.statusCode}');
                            // print('Response body: ${response.body}');
                            // var data = jsonDecode(response.body);
                            
                           
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>  portfolios(),));
                            
                            Data(
                              ID.toString(),
                              MenuName.toString(),
                              MenuUrlPath.toString(),
                              Employee.toString(),
                              MenuIconName.toString(),
                              Student.toString(),
                              Data.toString(),
                            );
                           
                            
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // // border: Border.all(
                                  // //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.userGear,
                                      size: 51,
                                      color: Color.fromARGB(255, 255, 204, 0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:30.0),
                                      child: Text(
                                        "PORTFOLIO",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
      
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => calendar()),
                            );
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.calendarDays,
                                      size: 51,
                                      color: Color.fromARGB(255, 255, 204, 0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:30.0),
                                      child: Text(
                                        "CALENDAR",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.graduationCap,
                                      size: 51,
                                      color: Color.fromARGB(255, 255, 204, 0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:30.0),
                                      child: Text(
                                        "ACADEMIC",
                                        style: TextStyle(
                                            fontSize: 11, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
      
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.calendarDays,
                                      size: 51,
                                      color: Color.fromARGB(255, 255, 204, 0),
                                    ),
                                
                                       Container(
                                         padding: EdgeInsets.only(top: 30),
                                         child: Text(
                                          "NOTICE BOARD",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,),
                                      ),
                                       ),
                                  ],
                                )),
                          ),
                        ),
                      ),
      
                      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            print('1 was clicked');
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.userTie,
                                      size: 51,
                                      color: Color.fromARGB(255, 255, 204, 0),
                                    ),
                                       Container(
                                         padding: EdgeInsets.only(top: 30),
                                         child: Text(
                                          "ACCOUNTS",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,),
                                      ),
                                       ),
                                  ],
                                )),
                          ),
                        ),
                      ),
      
                      Material(
                        borderRadius: BorderRadius.circular(12),
                        color: Color.fromARGB(189, 236, 236, 236),
                        child: InkWell(
                          onTap: () {
                            
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  MyApp(),));
                          },
                          child: SingleChildScrollView(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 141, 141, 141),
                                  // ),
                                ),
                                padding: const EdgeInsets.all(23.5),
                                child: Column(
                                  children: [
                                    const Icon(
                                      FontAwesomeIcons.scroll,
                                      size: 51,
                                      color: Color.fromARGB(255, 255, 204, 0),
                                    ),
                                    
                                       Container(
                                         padding: EdgeInsets.only(top: 30),
                                         child: Text(
                                          "ANNOUNCEMENTS",
                                          style: TextStyle(
                                              fontSize: 11, color: Colors.grey,),
                                      ),
                                       ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => public_information(),));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 410,
                      height: 230,
                      decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Color.fromARGB(255, 255, 204, 0))],
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('assets/public information.png'),
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ),
    );
  }

}