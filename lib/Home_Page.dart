import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:rbkei/navigationbarpages.dart/account.dart';
import 'package:rbkei/navigationbarpages.dart/navhome.dart';
import 'package:rbkei/navigationbarpages.dart/notification.dart';
import 'package:rbkei/navigationbarpages.dart/privacy.dart';

 
void main() => runApp(Home_Page());
 
class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'schooldesk',
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  
  int _currentIndex = 0;
  final List<Widget> _children = [
    navhome(),
    notification(),
    privacy(),
    account(),

  ];

  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
 
 
 
  @override
  Widget build(BuildContext context) {
    var tabselected;
    return new Scaffold(
      resizeToAvoidBottomInset: false,
    
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.amber,
        title: Center(child: Image.asset('assets/schooldesk.png',height: 35,
      ),)),
      body: _children[_currentIndex],
      
      bottomNavigationBar: BottomNavyBar(
        
        selectedIndex: _currentIndex,
        showElevation: true,
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        onItemSelected: (index) => setState(() => _currentIndex = index,),
        
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.apps),
            title: Text('Home'),
            activeColor: Colors.amber,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
            activeColor: Colors.amber,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.policy_outlined),
            title: Text(
              'Privacy Policy',
            ),
            activeColor: Colors.amber,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text('Account'),
            activeColor: Colors.amber,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}