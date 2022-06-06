// import 'dart:convert';
// /// AppMenus : {"LastUpdateOn":"11-03-2022 01:13:37","MenuIconUrl":"https://project.rbkei.org/img/SDAPPMenuIcon/","Data":[{"ID":"1","MenuName":"Portfolios","MenuUrlPath":"Employees/GetEmployeeProfile?IsProfile=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/settings-profile.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"2","MenuName":"Portfolios","MenuUrlPath":"Student/GetStudentProfile?IsProfile=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/settings-profile.png","Employee":"false","Student":"true","iOS":"True","Android":"True"},{"ID":"3","MenuName":"Calendar","MenuUrlPath":"Employees/GetEmployeeProfile?IsCalendar=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/calendar.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"4","MenuName":"Calendar","MenuUrlPath":"Student/GetStudentProfile?IsCalendar=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/calendar.png","Employee":"false","Student":"true","iOS":"True","Android":"True"},{"ID":"5","MenuName":"Academic","MenuUrlPath":"Academics/AcademicDetails","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/Education.png","Employee":"true","Student":"true","iOS":"True","Android":"True"},{"ID":"6","MenuName":"Notice Board","MenuUrlPath":"Aannouncement/GetNoticeBoardByUserSession?LayOut=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/noticeboard.png","Employee":"true","Student":"true","iOS":"True","Android":"True"},{"ID":"7","MenuName":"Settings","MenuUrlPath":"home/response","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/audit.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"8","MenuName":"Security","MenuUrlPath":"home/SecuritySettings","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/Access.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"9","MenuName":"HR","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/Customer-insights-manager.png","Employee":"false","Student":"false","iOS":"True","Android":"True"},{"ID":"10","MenuName":"Accounts","MenuUrlPath":"home/commingsoon","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/accountant.png","Employee":"true","Student":"true","iOS":"false","Android":"True"},{"ID":"11","MenuName":"Administration","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/microsoft-admin.png","Employee":"false","Student":"false","iOS":"True","Android":"True"},{"ID":"12","MenuName":"TimeTable","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/timetable.png","Employee":"false","Student":"false","iOS":"True","Android":"True"},{"ID":"13","MenuName":"Submission","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/submit.png","Employee":"false","Student":"false","iOS":"false","Android":"True"},{"ID":"14","MenuName":"Fees","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/rupee.png","Employee":"false","Student":"false","iOS":"false","Android":"True"},{"ID":"15","MenuName":"Announcement","MenuUrlPath":"Aannouncement/MainTabAnnouncements","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/submit.png","Employee":"true","Student":"true","iOS":"false","Android":"True"}]}

// AppMenus appMenusFromJson(String str) => AppMenus.fromJson(json.decode(str));
// String appMenusToJson(AppMenus data) => json.encode(data.toJson());
// class AppMenus {
//   var length;

//   var response;

//   AppMenus({
//       AppMenus? appMenus,}){
//     _appMenus = appMenus;
// }

//   AppMenus.fromJson(dynamic json) {
//     _appMenus = json['AppMenus'] != null ? AppMenus.fromJson(json['AppMenus']) : null;
//   }
//   AppMenus? _appMenus;

//   get data => null;
// AppMenus copyWith({  AppMenus? appMenus,
// }) => AppMenus(  appMenus: appMenus ?? _appMenus,
// );
//   AppMenus? get appMenus => _appMenus;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     if (_appMenus != null) {
//       map['AppMenus'] = _appMenus?.toJson();
//     }
//     return map;
//   }

// }

// /// LastUpdateOn : "11-03-2022 01:13:37"
// /// MenuIconUrl : "https://project.rbkei.org/img/SDAPPMenuIcon/"
// /// Data : [{"ID":"1","MenuName":"Portfolios","MenuUrlPath":"Employees/GetEmployeeProfile?IsProfile=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/settings-profile.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"2","MenuName":"Portfolios","MenuUrlPath":"Student/GetStudentProfile?IsProfile=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/settings-profile.png","Employee":"false","Student":"true","iOS":"True","Android":"True"},{"ID":"3","MenuName":"Calendar","MenuUrlPath":"Employees/GetEmployeeProfile?IsCalendar=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/calendar.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"4","MenuName":"Calendar","MenuUrlPath":"Student/GetStudentProfile?IsCalendar=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/calendar.png","Employee":"false","Student":"true","iOS":"True","Android":"True"},{"ID":"5","MenuName":"Academic","MenuUrlPath":"Academics/AcademicDetails","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/Education.png","Employee":"true","Student":"true","iOS":"True","Android":"True"},{"ID":"6","MenuName":"Notice Board","MenuUrlPath":"Aannouncement/GetNoticeBoardByUserSession?LayOut=true","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/noticeboard.png","Employee":"true","Student":"true","iOS":"True","Android":"True"},{"ID":"7","MenuName":"Settings","MenuUrlPath":"home/response","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/audit.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"8","MenuName":"Security","MenuUrlPath":"home/SecuritySettings","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/Access.png","Employee":"true","Student":"false","iOS":"True","Android":"True"},{"ID":"9","MenuName":"HR","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/Customer-insights-manager.png","Employee":"false","Student":"false","iOS":"True","Android":"True"},{"ID":"10","MenuName":"Accounts","MenuUrlPath":"home/commingsoon","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/accountant.png","Employee":"true","Student":"true","iOS":"false","Android":"True"},{"ID":"11","MenuName":"Administration","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/microsoft-admin.png","Employee":"false","Student":"false","iOS":"True","Android":"True"},{"ID":"12","MenuName":"TimeTable","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/timetable.png","Employee":"false","Student":"false","iOS":"True","Android":"True"},{"ID":"13","MenuName":"Submission","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/submit.png","Employee":"false","Student":"false","iOS":"false","Android":"True"},{"ID":"14","MenuName":"Fees","MenuUrlPath":"","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/rupee.png","Employee":"false","Student":"false","iOS":"false","Android":"True"},{"ID":"15","MenuName":"Announcement","MenuUrlPath":"Aannouncement/MainTabAnnouncements","MenuIconName":"https://project.rbkei.org/img/SDAPPMenuIcon/submit.png","Employee":"true","Student":"true","iOS":"false","Android":"True"}]

// AppMenus appMenuFromJson(String str) => AppMenus.fromJson(json.decode(str));
// String appMenuToJson(AppMenus data) => json.encode(data.toJson());
// class AppMenu {
//   var length;

//   AppMenus({
//       String? lastUpdateOn, 
//       String? menuIconUrl, 
//       List<Data>? data,}){
//     _lastUpdateOn = lastUpdateOn;
//     _menuIconUrl = menuIconUrl;
//     _data = data;
// }

//   AppMenu.fromJson(dynamic json) {
//     _lastUpdateOn = json['LastUpdateOn'];
//     _menuIconUrl = json['MenuIconUrl'];
//     if (json['Data'] != null) {
//       _data = [];
//       json['Data'].forEach((v) {
//         _data?.add(Data.fromJson(v));
//       });
//     }
//   }
//   String? _lastUpdateOn;
//   String? _menuIconUrl;
//   List<Data>? _data;
// AppMenu copyWith({  String? lastUpdateOn,
//   String? menuIconUrl,
//   List<Data>? data,
// }) => AppMenus(  lastUpdateOn: lastUpdateOn ?? _lastUpdateOn,
//   menuIconUrl: menuIconUrl ?? _menuIconUrl,
//   data: data ?? _data,
// );
//   String? get lastUpdateOn => _lastUpdateOn;
//   String? get menuIconUrl => _menuIconUrl;
//   List<Data>? get data => _data;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['LastUpdateOn'] = _lastUpdateOn;
//     map['MenuIconUrl'] = _menuIconUrl;
//     if (_data != null) {
//       map['Data'] = _data?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }

// }

// /// ID : "1"
// /// MenuName : "Portfolios"
// /// MenuUrlPath : "Employees/GetEmployeeProfile?IsProfile=true"
// /// MenuIconName : "https://project.rbkei.org/img/SDAPPMenuIcon/settings-profile.png"
// /// Employee : "true"
// /// Student : "false"
// /// iOS : "True"
// /// Android : "True"

// Data dataFromJson(String str) => Data.fromJson(json.decode(str));
// String dataToJson(Data data) => json.encode(data.toJson());
// class Data {
//   Data({
//       String? id, 
//       String? menuName, 
//       String? menuUrlPath, 
//       String? menuIconName, 
//       String? employee, 
//       String? student, 
//       String? iOS, 
//       String? android,}){
//     _id = id;
//     _menuName = menuName;
//     _menuUrlPath = menuUrlPath;
//     _menuIconName = menuIconName;
//     _employee = employee;
//     _student = student;
//     _iOS = iOS;
//     _android = android;
// }

//   Data.fromJson(dynamic json) {
//     _id = json['ID'];
//     _menuName = json['MenuName'];
//     _menuUrlPath = json['MenuUrlPath'];
//     _menuIconName = json['MenuIconName'];
//     _employee = json['Employee'];
//     _student = json['Student'];
//     _iOS = json['iOS'];
//     _android = json['Android'];
//   }
//   String? _id;
//   String? _menuName;
//   String? _menuUrlPath;
//   String? _menuIconName;
//   String? _employee;
//   String? _student;
//   String? _iOS;
//   String? _android;

//   get images => null;
// Data copyWith({  String? id,
//   String? menuName,
//   String? menuUrlPath,
//   String? menuIconName,
//   String? employee,
//   String? student,
//   String? iOS,
//   String? android,
// }) => Data(  id: id ?? _id,
//   menuName: menuName ?? _menuName,
//   menuUrlPath: menuUrlPath ?? _menuUrlPath,
//   menuIconName: menuIconName ?? _menuIconName,
//   employee: employee ?? _employee,
//   student: student ?? _student,
//   iOS: iOS ?? _iOS,
//   android: android ?? _android,
// );
//   String? get id => _id;
//   String? get menuName => _menuName;
//   String? get menuUrlPath => _menuUrlPath;
//   String? get menuIconName => _menuIconName;
//   String? get employee => _employee;
//   String? get student => _student;
//   String? get iOS => _iOS;
//   String? get android => _android;

//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['ID'] = _id;
//     map['MenuName'] = _menuName;
//     map['MenuUrlPath'] = _menuUrlPath;
//     map['MenuIconName'] = _menuIconName;
//     map['Employee'] = _employee;
//     map['Student'] = _student;
//     map['iOS'] = _iOS;
//     map['Android'] = _android;
//     return map;
//   }

// }