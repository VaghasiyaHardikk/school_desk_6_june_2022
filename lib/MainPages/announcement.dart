import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:rbkei/api/announcement_auth.dart';
import 'package:rbkei/api/notification_refresh.dart';
import 'package:rbkei/api/notification_refresh.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../api/notification_refresh.dart';

// class announcement extends StatefulWidget {
//   const announcement({Key? key}) : super(key: key);

//   @override
//   State<announcement> createState() => _announcementState();
// }

// class AnnouncApi {
//   final int announcementText;
//   final int announcementHash;
//   final int announcementTypeName;
//   final int thumbnail;
//   final int theamColor;
//   final int lastUpdatedOn;
//   final int sentBy;
//   final int sentOn;
//   final int announcementMedias;

//   AnnouncApi({
//     required this.announcementText,
//     required this.announcementHash,
//     required this.announcementTypeName,
//     required this.thumbnail,
//     required this.theamColor,
//     required this.lastUpdatedOn,
//     required this.sentBy,
//     required this.sentOn,
//     required this.announcementMedias,
//   });
//   factory AnnouncApi.fromMap(Map<String, dynamic> json) => AnnouncApi(
//       announcementText: json["announcementText"],
//       announcementHash: json["announcementHash"],
//       announcementTypeName: json["announcementTypeName"],
//       thumbnail: json["thumbnail"],
//       theamColor: json["theamColor"],
//       lastUpdatedOn: json["lastUpdatedOn"],
//       sentBy: json["sentBy"],
//       sentOn: json["sentOn"],
//       announcementMedias: json["announcementMedias"]);
//   late List<AnnouncApi> data;
// }

// class _announcementState extends State<announcement> {
//   var announcementText;
//   var announcementHash;
//   var announcementTypeName;
//   var thumbnail;
//   var theamColor;
//   var lastUpdatedOn;
//   var sentBy;
//   var sentOn;
//   var announcementMedias;

//   void AnnouncApi(
//       String announcementText,
//       announcementHash,
//       announcementTypeName,
//       thumbnail,
//       theamColor,
//       lastUpdatedOn,
//       sentBy,
//       sentOn,
//       announcementMedias,
//       String) async {

//         SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//     http.Response response = await http.get(
//         Uri.parse(
//             'https://mtestsd.rbkei.in/api/StudentAnnouncements?LastUpdatedOn=2000-01-01'),
//         headers: {
//           "Content-Type": "application/json",
//           'Authorization':
//               'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOlsiVXNlciIsIkVtcGxveWVlIiwiVXNlciIsIkVtcGxveWVlIiwiRGV2ZWxvcGVyIiwiQ2FsZW5kYXIiLCJBbm5vdW5jZW1lbnQiXSwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6WyJTb2hhbiBLICIsIlNvaGFuIEsgIl0sImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6WyJhcHBAcmJrZWkub3JnIiwiYXBwQHJia2VpLm9yZyJdLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9tb2JpbGVwaG9uZSI6WyI5ODc2NTQzMjEwIiwiOTg3NjU0MzIxMCJdLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6WyI1IiwiNSJdLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3NlcmlhbG51bWJlciI6WyJzczpmZjpkZDpkMTpoNCIsInNzOmZmOmRkOmQxOmg0Il0sImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvYXV0aGVudGljYXRpb25tZXRob2QiOlsiTG9jYWwiLCJMb2NhbCIsIkxvY2FsIiwiTG9jYWwiXSwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjpbIkVtcGxveWVlIiwiRW1wbG95ZWUiXSwiUHJvZmlsZUltYWdlIjpbIjgzMjAyMjE5MTQyLnBuZyIsIjgzMjAyMjE5MTQyLnBuZyJdLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3ByaW1hcnlzaWQiOlsiNSw1LDQiLCI1LDUsNCJdLCJFbXBsb3llZUlkIjpbIjUiLCI1Il0sImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOlsiRW1wbG95ZWUiLCJFbXBsb3llZSJdLCJVc2VyU2Nob29scyI6WyI0IiwiNCJdLCJleHAiOjE2NTQzMzM4MjYsImlzcyI6IioiLCJhdWQiOlsiKiIsIioiXX0.NK384685EhwEW-vHJn9lhPrFxKSKVIjMo0SJ4iMP-yI'
//         });
//     print('Response status: ${response.body}');
//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body.toString());
//       print(data['data']);
//       print('Okay Fine');
//     } else {
//       print('Failed');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Announcement'),
//           toolbarHeight: 65,
//           backgroundColor: Color.fromARGB(255, 255, 204, 0),
//           elevation: 1,
//         ),
//         body: Center(
//           child: InkWell(
//               onTap: () async {
//                 AnnouncApi(
//                     announcementText.toString(),
//                     announcementHash.toString(),
//                     announcementTypeName.toString(),
//                     thumbnail.toString(),
//                     theamColor.toString(),
//                     lastUpdatedOn.toString(),
//                     sentBy.toString(),
//                     sentOn.toString(),
//                     announcementMedias.toString(),
//                     String);

//                     Navigator.push(context, MaterialPageRoute(builder: (context) =>  AnnouncAuth(),));

//               },
//               child: Text('data'),
//               focusColor: Colors.amber,
//               hoverColor: Colors.amber),
//         ));
//   }
// }

Future<Data> fetchData() async {
  final response = await http.get(
      Uri.parse(
          'https://mtestsd.rbkei.in/api/StudentAnnouncements?LastUpdatedOn=2000-01-01'),
      headers: {
        "Content-Type": "application/json; charset=utf-8",
        "Authorization":
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOlsiVXNlciIsIkVtcGxveWVlIiwiVXNlciIsIkVtcGxveWVlIiwiRGV2ZWxvcGVyIiwiQ2FsZW5kYXIiLCJBbm5vdW5jZW1lbnQiXSwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6WyJTb2hhbiBLICIsIlNvaGFuIEsgIl0sImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6WyJhcHBAcmJrZWkub3JnIiwiYXBwQHJia2VpLm9yZyJdLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9tb2JpbGVwaG9uZSI6WyI5ODc2NTQzMjEwIiwiOTg3NjU0MzIxMCJdLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6WyI1IiwiNSJdLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3NlcmlhbG51bWJlciI6WyJzczpmZjpkZDpkMTpoNCIsInNzOmZmOmRkOmQxOmg0Il0sImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvYXV0aGVudGljYXRpb25tZXRob2QiOlsiTG9jYWwiLCJMb2NhbCIsIkxvY2FsIiwiTG9jYWwiXSwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvc2lkIjpbIkVtcGxveWVlIiwiRW1wbG95ZWUiXSwiUHJvZmlsZUltYWdlIjpbIjgzMjAyMjE5MTQyLnBuZyIsIjgzMjAyMjE5MTQyLnBuZyJdLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3ByaW1hcnlzaWQiOlsiNSw1LDQiLCI1LDUsNCJdLCJFbXBsb3llZUlkIjpbIjUiLCI1Il0sImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvdXNlcmRhdGEiOlsiRW1wbG95ZWUiLCJFbXBsb3llZSJdLCJVc2VyU2Nob29scyI6WyI0IiwiNCJdLCJleHAiOjE2NTQ1MjEzNzQsImlzcyI6IioiLCJhdWQiOlsiKiIsIioiXX0.tjgl7S9zqwRTj5NkBR63GeOMeilw5UjjH0cNvPQFRLY",
      });
  if (response.statusCode == 200) {
    return Data.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Unexpected error occured!');
  }
}

class Data {
  Data({
    required this.liveVersion,
    required this.minRequiredVersion,
    required this.isUpdateRequired,
     this.alert,
     this.errorCode,
     this.errorMessage,
    required this.userIsActive,
    required this.status,
    required this.data,
  });
  late final int liveVersion;
  late final int minRequiredVersion;
  late final bool isUpdateRequired;
  late final Null alert;
  late final Null errorCode;
  late final Null errorMessage;
  late final bool userIsActive;
  late final bool status;
  late final List<dynamic> data;
  
  Data.fromJson(Map<String, dynamic> json){
    liveVersion = json['liveVersion'];
    minRequiredVersion = json['minRequiredVersion'];
    isUpdateRequired = json['isUpdateRequired'];
    alert = null;
    errorCode = null;
    errorMessage = null;
    userIsActive = json['userIsActive'];
    status = json['status'];
    data = List.castFrom<dynamic, dynamic>(json['data']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['liveVersion'] = liveVersion;
    _data['minRequiredVersion'] = minRequiredVersion;
    _data['isUpdateRequired'] = isUpdateRequired;
    _data['alert'] = alert;
    _data['errorCode'] = errorCode;
    _data['errorMessage'] = errorMessage;
    _data['userIsActive'] = userIsActive;
    _data['status'] = status;
    _data['data'] = data;
    return _data;
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Data> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API Example',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 204, 0),
          elevation: 1,
          toolbarHeight: 60,
          title: Text('Announcement'),
        ),
        body: Center(
          child: FutureBuilder<Data>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // return(Text(snapshot.data?.data));
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              // By default show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
