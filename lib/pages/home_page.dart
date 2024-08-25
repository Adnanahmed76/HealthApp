import 'package:flutter/material.dart';
import 'package:flutterui/widgets/health_need.dart';
import 'package:flutterui/widgets/nearby_doctor.dart';
import 'package:flutterui/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text(
            "Hi , Adnan"
            ),
            Text("How are you feeling today? ",style: Theme.of(context).textTheme.bodyLarge,)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined)),
IconButton(onPressed: (){}, icon: Icon(Icons.search_outlined))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(14),
        children: [
//upcoming cards
SizedBox(height: 10,),
UpcomingCard(),
SizedBox(height: 10,),
Text("Health Need",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600,color: Colors.black) ),
SizedBox(height: 35,),
Healthneed(),
SizedBox(height:20),
Text("Nearby Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
SizedBox(height: 10,),
NearbyDoctor()
//health needs




//health docter
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
        BottomNavigationBarItem(icon: Icon(Ionicons.home_outline),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Ionicons.calendar_outline),label: "Calender"),
        BottomNavigationBarItem(icon: Icon(Ionicons.chatbubble_ellipses_outline),label: "Chat"),
        BottomNavigationBarItem(icon: Icon(Ionicons.person_circle_outline),label: "Profile")
      ]),
    );
  }
}