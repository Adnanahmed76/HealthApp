import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        
        width: double.infinity,
        height: 150,
        
        padding: EdgeInsets.symmetric(horizontal: 22,vertical: 20),
        decoration: BoxDecoration(
      
      color: Color.fromARGB(255, 93, 93, 208),
      borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              
              child: Image.asset("assets/doctor_2.jpg",
              width: 45,
              ),
            ),
            SizedBox(width: 14,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("Dr Rubben Dorwart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                ),
                Text("Dental Specialist",style: TextStyle(fontSize: 17,color: Colors.white),),
                SizedBox(height: 15,),
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 6,vertical: 6.0),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                               children: [
                                 Icon(Icons.calendar_month,color: Colors.white,size: 18,),
                                 SizedBox(width: 7,),
                                 Text("Today",style: TextStyle(fontSize: 17,color: Colors.white),),
                                 SizedBox(width: 7,),
                                 Icon(Ionicons.time_outline,size: 20,color: Colors.white,),
                                  SizedBox(width: 7,),
                                 Text("14:30 - 15:30 AM",style: TextStyle(color: Colors.white,fontSize: 16),)
                               ],
                             ),

                 )
              ]
              
            ),
           
          ],
        ),
      ),
    );
  }
}