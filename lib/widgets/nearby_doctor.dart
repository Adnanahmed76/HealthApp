import 'package:flutter/material.dart';
import 'package:flutterui/models/doctor_models.dart';
import 'package:ionicons/ionicons.dart';
class NearbyDoctor extends StatelessWidget {
  const NearbyDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(nearbydoctor.length, (index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(nearbydoctor[index].Profiles))
                ),
              ),
              SizedBox(width: 10,),
             Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nearbydoctor[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 0),
                Text("general Practioner"),
                SizedBox(height: 20,),
               Row(
                children: [
                  Icon(Ionicons.star,color: Colors.yellow,),
                  Text("4.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  SizedBox( width: 5,),
                  Text("(191) Reviews")
                ],
               )
              ],
             )
            ],
          ),
        );
      })
    );
  }
}