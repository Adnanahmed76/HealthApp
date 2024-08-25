import 'package:flutter/material.dart';
class Healthneed extends StatefulWidget {
   Healthneed({super.key});


  @override
  State<Healthneed> createState() => _HealthneedState();
}

class _HealthneedState extends State<Healthneed> {
  @override
  Widget build(BuildContext context) {
      List<CustomIcon> customeicon=[
  CustomIcon(icon: "assets/appointment.png", name:"apontment"),
  CustomIcon(icon: "assets/hospital.png", name: "Hospital"),
  CustomIcon(icon: "assets/virus.png", name: "Covid-19"),
  CustomIcon(icon: "assets/more.png", name: "More"),
  ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customeicon.length, (index){
        return Column(
          children: [
Container(
  padding: EdgeInsets.all(15),
  width:80,
  height: 80,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: Colors.grey.withOpacity(0.1)
  ),
  child: Image.asset(customeicon[index].icon)
),
Text(customeicon[index].name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,),),

          ],
        );
      })
    );
  }

}

  class CustomIcon{
  final String icon;
  final String name;
   
   CustomIcon({required this.icon,required this.name});
}
